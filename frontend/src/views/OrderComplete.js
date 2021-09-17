import React from "react";
import { Link } from "react-router-dom";

import Navbar from "components/Navbars/AuthNavbar.js";
import Footer from "components/Footers/Footer.js";

export default function OrderComplete() {
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
            <section className="relative py-16 bg-blueGray-200">
              <div className=" mx-auto px-4">
              <div className="relative flex flex-col min-w-0 break-words bg-white w-full mb-6 shadow-xl rounded-lg -mt-64">
                <div className="px-6 py-6">
                <div className="justify-center">                  
                  {/* <!-- About Section starts here --> */}
                  <div className = "text-4xl bold text-center ">
                    <div> Thank You for your purchase from Green Carpets </div>
                      <div>
                        <button className="mt-6 text-white bg-blueGray-800 border-0 focus:outline-none hover:bg-red-600 text-xl font-bold py-2 px-6 rounded">
                        <Link to="/browseProduct"> Go Back to browse products</Link>
                         </button></div>
                  </div>                                                     
                  {/* About Section ends here */}
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
