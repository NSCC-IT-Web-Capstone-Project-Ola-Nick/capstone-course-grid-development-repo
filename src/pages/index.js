import Image from "next/image";
import { Inter } from "next/font/google";
import Link from "next/link";

const inter = Inter({ subsets: ["latin"] });

import { getCoursesByUserId } from "@/data/dbTransactions/course.dbTransaction";


// import component CourseDashCard and Navbar
import CourseDashCard from '@/components/CourseDashCard';
import Navbar from '@/components/Navbar';
import { useEffect, useState } from "react";
import SpinnerComponent from "@/components/spinnerComponent";

// here we will also get cookies
export const getServerSideProps = async (context) => {

  // the the x-user-payload from the headers
  const userPayloadStr = context.req.headers['x-user-payload'];
  // transform the string into an object
  const user = JSON.parse(userPayloadStr);

  // if we can't find the user, we will redirect to the unauthorized page
  // in the future, we will redirect to the login page
  if (!user || !user.userId || !user.email) {
    return {
      redirect: {
        destination: '/unauthorized',
        permanent: false,
      },
    }
  }

  let courses = [];
  let error = null;

  // get the courses
  try {
    courses = await getCoursesByUserId(user.userId);
  } catch (error) {
    error = error;
  }

  // transform the dates into a string, instead of this we should format the date, more on this later
  user.dateCreated = user.dateCreated?.toString() || null;
  user.dateUpdated = user.dateUpdated?.toString() || null;

  courses.forEach((course) => {
    course.dateCreated = course.dateCreated?.toString() || null;
    course.dateUpdated = course.dateUpdated?.toString() || null;
  });

  return {
    props: {
      user,
      courses,
      error
    }
  }
}

export default function Home(props) {

  // for the moment we have a dummy image, which we get from the following url
  const imageUrl = "/api/images?imageName=course-image.png"

  // the isLoading state variable
  const [isLoading, setIsLoading] = useState(true);

  useEffect(() => {
    setIsLoading(false);
  },
    []);

  return (
    <main
      className={`${inter.className} flex flex-col items-center min-h-screen gap-5 w-full overflow-hidden`}
    >
      {isLoading === true &&
        <SpinnerComponent isLoadingState={isLoading} />
      }
      {/* 
        because we would not be in this page otherwise, have the isLoggedIn 
        property set as true in this page, if no value is passed, it will default to undefined
        which will keep the login and register buttons as if it was set to false 
      */}
      <Navbar isLoggedIn={true} />
      <h1 className="text-main-title-size font-semibold text-primary-600 text-center my-3">
        Courses Dashboard
      </h1>

      <p className="text-secondary-title-size font-semibold text-primary-500 w-full text-center text-ellipsis break-words">
        Faculty email:
        {props.user.email}

      </p>

      <div className="flex justify-center mb-5">
        <Link className="bg-primary-500 hover:bg-primary-600 text-white font-semibold py-2 px-4 rounded" href="/course/add">
          Add Course
        </Link>
      </div>

      {
        props.error
          ?
          <p className="text-lg text-red-500 ">{props.error}</p>
          :
          <div className="grid grid-cols-1 mobile:grid-cols-2 tablet:grid-cols-3 laptop:grid-cols-4 max-w-6xl gap-6 my-5">
            {
              props.courses.map((course) => {
                return CourseDashCard({ course: course, imageUrl: imageUrl });

              })
            }
          </div>
      }
    </main>
  );
}
