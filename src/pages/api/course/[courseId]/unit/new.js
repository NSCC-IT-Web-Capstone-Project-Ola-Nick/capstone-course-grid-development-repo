import { getCourseById } from "@/data/dbTransactions/course.dbTransaction";
import { createUnit, getUnitsByCourseId, updateUnitNumber } from "@/data/dbTransactions/unit.dbTransaction";

// import the validation functions
import { isNotEmpty, isNotUndefined, isSanitizedStringZod } from "@/utils/validation/validationAll";
import { validateCourseOwnership } from "@/utils/validation/validateCourseOwnership";


export default async function handler(req, res)  {

    if (req.method !== "POST") {
        res.status(405).json({ error: "Method not allowed" });
        return;
    }

    // get the form data from fields
    const formData = req.body;
    // get the course id from url param slug
    const { courseId } = req.query;

    // get the user id from the user payload
    const userPayloadStr = req.headers['x-user-payload'];

    try {

        // search the course by id and verify that the user owns the course
        // if not, return a unauthorized response
        const courseFromDB = await getCourseById(parseInt(courseId));
        
        // if the course does not exist, return a a not found response
        if (!courseFromDB) {
            res.status(404).json({ error: "Not found" });
            return;
        }

        // validate course ownership
        const courseValidationResult = await validateCourseOwnership(courseFromDB, userPayloadStr);

        // if the courseValidationResult is not null, return redirect
        if (courseValidationResult === "/unauthorized") {
            throw new Error("User does not have permission to access this resource");
        } else if (courseValidationResult === "/500") {
            throw new Error("Internal server error");
        }

        // validate the unit name is sanitized string
        if (!isSanitizedStringZod(formData.unitName) || formData.unitName.length > 50 || !isNotEmpty(formData.unitName) || !isNotUndefined(formData.unitName)) {
            throw new Error("Unit name is not valid");
        }

        if (!formData.unitNumber) {
            throw new Error("Unit number is required");
        }

        // we are going to save the unit. Because unit number has to be unique, we will
        // first get all the units for the course, verify if the unit number is at the end
        // if not, right after creating the unit we will update the unit numbers for the rest

        if (parseInt(formData.unitNumber) > courseFromDB._count + 1) {
            throw new Error("Unit number is not valid, please make sure that is not greater than the last unit number + 1");
        }

        // create the unit
        const newUnit = await createUnit({unitName: formData.unitName, courseId: parseInt(courseId)});
        

        // if the form data unit number is smaller than the new unit number, we will update the unit numbers
        if (parseInt(formData.unitNumber) < newUnit.unitNumber) {
            await updateUnitNumber(parseInt(courseId), newUnit.id, parseInt(formData.unitNumber));
        }
    
    } catch (error) {
        res.status(401).json({ error: error.message });
        return;
    }
    
    
    res.status(200).json({ message: "Unit created successfully" });
    
}