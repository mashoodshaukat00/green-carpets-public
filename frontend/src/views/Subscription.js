import React from "react";
import { Link } from "react-router-dom";

import Navbar from "components/Navbars/AuthNavbar.js";
import Footer from "components/Footers/Footer.js";

export default function Subscription() {
  return (
    <>
      <Navbar transparent />
      <main className="profile-page">
        <section className="relative block h-500-px">
          <div
            className="absolute top-0 w-full h-full bg-center bg-cover"
            style={{
              backgroundImage:
                "url('https://images.unsplash.com/photo-1499336315816-097655dcfbda?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2710&q=80')",
            }}>
            <span
              id="blackOverlay"
              className="w-full h-full absolute opacity-50 bg-black">                
            </span>
          </div>
          {/* Background ends here */}
            <div
              className="top-auto bottom-0 left-0 right-0 w-full absolute pointer-events-none overflow-  h-70-px"
              style={{ transform: "translateZ(0)" }}>
              <svg
                className="absolute bottom-0 overflow- "
                xmlns="http://www.w3.org/2000/svg"
                preserveAspectRatio="none"
                version="1.1"
                viewBox="0 0 2560 100"
                x="0"
                y="0">
                <polygon
                  className="text-blueGray-200 fill-current"
                  points="2560 0 2560 100 0 100">
                </polygon>
              </svg>
            </div>
            {/* background bottom ends here */}
          </section>
            <section className="relative py-10 bg-blueGray-200">
              <div className=" mx-auto px-4">
              <div className="relative flex flex-col min-w-0 break-words bg-white w-full mb-6 shadow-xl rounded-lg -mt-64">
                <div className="px-6 py-6">
                 <div className="justify-center">
                   <div className="">
                     <h1 className="text-5xl font-bold text-center py-6">Subscriptions</h1>
                     <h3 className="text-center text-xl pb-6">Our Subscriptions are designed to cater your demands</h3>
                    </div>                 
                  {/* <!-- Subscription Section starts here --> */}                  
                <div className="container mx-auto grid sm:grid-cols-1 md:grid-cols-2 lg:grid-cols-3 xl:grid-cols-3 pb-6 pt-6 gap-8">                  
                    <div className="rounded border-gray-300 dark:border-gray-700 border-solid border-2">
                      <div className="bg-white">
                        <div className="px-10 py-6 mb-10 text-center">
                          <div className="text-2xl font-bold text-purple-500 mb-4">
                            Golden</div>
                            <span className="text-sm">
                              Lorem ipsum dolor, sit amet consectetur adipisicing elit. Voluptate tempore eligendi magnam distinctio molestias. Incidunt at consequuntur consequatur 
                              officiis repudiandae! Culpa cum vel tenetur itaque eius provident voluptatum similique impedit?
                              </span>
                              </div>
                              <button className="w-full text-lg h-16 text-white font-extrabold bg-purple-500 shadow-lg hover:bg-purple-700 rounded">500kr Buy</button>
                              </div>
                              </div>
                              <div className="rounded border-gray-300 dark:border-gray-700 border-solid shadow-lg border-2">
                                <div className="bg-white">
                                  <div className="px-10 py-6 mb-10 text-center">
                                    <div className="text-2xl font-bold text-green-500 mb-4">Diamond</div>
                                    <span className="text-sm">Lorem ipsum dolor, sit amet consectetur adipisicing elit. Voluptate tempore eligendi magnam distinctio molestias. Incidunt 
                                    at consequuntur consequatur officiis repudiandae! Culpa cum vel tenetur itaque eius provident voluptatum similique impedit?</span>
                                    </div>
                                    <button className="w-full text-lg h-16 text-white font-extrabold bg-green-500 shadow-lg rounded hover:bg-green-700">800kr Buy</button>
                                    </div>
                                    </div>
                                    <div className="rounded border-gray-300 dark:border-gray-700 border-solid shadow-lg border-2">
                                      <div className="bg-white">
                                        <div className="px-10 py-6 mb-10 text-center">
                                         <div className="text-2xl font-bold text-yellow-500 mb-4">Platinum</div>
                                    <span className="text-sm">Lorem ipsum dolor, sit amet consectetur adipisicing elit. Voluptate tempore eligendi magnam distinctio molestias. Incidunt 
                                  at consequuntur consequatur officiis repudiandae! Culpa cum vel tenetur itaque eius provident voluptatum similique impedit?</span>
                              </div>
                           <button className="w-full text-lg h-16 text-white font-extrabold bg-yellow-500 shadow-lg rounded hover:bg-yellow-700">1000kr Buy</button>
                       </div>
                    </div>
                  </div>            
                  {/* Subscription Section ends here */}
              </div>
            </div>
          </div>
        </div>
      </section>
    </main>
    <Footer/>
    </>
  );
}
