// here we will add all the transactions related to the course model
// import the prisma client
import prisma from "../prisma";

// crud transactions for course
// create a course
const createCourse = async ({
    courseName,
    userId
}) => {

    // add the course to the database
    const createdCourse = await prisma.course.create({
        data: {
            courseName: courseName,
            userId: userId
        }
    });

    // if the course is not created, we will throw an error
    if (!createdCourse) {
        throw new Error("There was a problem creating the course, please try again later");
    }

    return createdCourse;
}

// get all courses for users
const getCoursesByUserId = async (userId) => {

    // get all courses for the user
    const courses = await prisma.course.findMany({
        where: {
            userId: userId
        }
    });

    // if the courses are not retrieved, we will throw an error
    if (!courses) {
        throw new Error("There was a problem retrieving the courses, please try again later");
    }

    return courses;
}

// get course by id
const getCourseById = async (id) => {

    // get the course by id
    const course = await prisma.course.findUnique({
        where: {
            id: id
        }
    });

    // if the course is not retrieved, we will throw an error
    if (!course) {
        throw new Error("There was a problem retrieving the course, please try again later");
    }

    return course;
}

const updateCourse = async ({
    id,
    newCourseName
}) => {
    
    // get the course by id
    const course = await getCourseById(id);

    // if the course is not retrieved, we will throw an error
    if (!course) {
        throw new Error("There was a problem retrieving the course, please try again later");
    }

    // update the course
    const updatedCourse = await prisma.course.update({
        where: {
            id: id
        },
        data: {
            courseName: newCourseName,
        }
    });

    // if the course is not updated, we will throw an error
    if (!updatedCourse) {
        throw new Error("There was a problem updating the course, please try again later");
    }

    return updatedCourse;
}

export {
    createCourse,
    getCoursesByUserId,
    getCourseById,
    updateCourse
}