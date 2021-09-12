import React from "react";

import Navbar from "components/Navbars/AuthNavbar.js";
import Footer from "components/Footers/Footer.js";

export default function Profile() {
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
                <div className="flex flex-wrap justify-center">                  
                  {/* <!-- About Section starts here --> */}
                  <div  className="bg-white p-3 shadow-sm rounded-sm">
                      <div  className="flex items-center space-x-2 font-semibold text-gray-900 leading-8">
                          <span clas="text-green-500">
                              <svg  className="h-5" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24"
                                  stroke="currentColor">
                                  <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                                      d="M16 7a4 4 0 11-8 0 4 4 0 018 0zM12 14a7 7 0 00-7 7h14a7 7 0 00-7-7z" />
                              </svg>
                          </span>
                          <span  className="tracking-wide">About</span>
                      </div>
                      <div  className="text-gray-700">
                          <div  className="grid md:grid-cols-2 text-sm">
                          <div  className="grid grid-cols-2">
                                  <div  className="px-4 py-2 font-semibold">Customer ID</div>
                                  <div  className="px-4 py-2">001</div>
                              </div>
                              <div  className="grid grid-cols-2">
                                  <div  className="px-4 py-2 font-semibold">Subscription ID</div>
                                  <div  className="px-4 py-2">008</div>
                              </div>
                              <div  className="grid grid-cols-2">
                                  <div  className="px-4 py-2 font-semibold">First Name</div>
                                  <div  className="px-4 py-2">Jane</div>
                              </div>
                              <div  className="grid grid-cols-2">
                                  <div  className="px-4 py-2 font-semibold">Last Name</div>
                                  <div  className="px-4 py-2">Doe</div>
                              </div>
                              <div  className="grid grid-cols-2">
                                  <div  className="px-4 py-2 font-semibold">Gender</div>
                                  <div  className="px-4 py-2">Female</div>
                              </div>
                              <div  className="grid grid-cols-2">
                                  <div  className="px-4 py-2 font-semibold">Contact No.</div>
                                  <div  className="px-4 py-2">+11 998001001</div>
                              </div>
                              <div  className="grid grid-cols-2">
                                  <div  className="px-4 py-2 font-semibold">Current Address</div>
                                  <div  className="px-4 py-2">Beech Creek, PA, Pennsylvania</div>
                              </div>
                              <div  className="grid grid-cols-2">
                                  <div  className="px-4 py-2 font-semibold">Permanant Address</div>
                                  <div  className="px-4 py-2">Arlington Heights, IL, Illinois</div>
                              </div>
                              <div  className="grid grid-cols-2">
                                  <div  className="px-4 py-2 font-semibold">Email.</div>
                                  <div  className="px-4 py-2">
                                      <a  className="text-blue-800" href="mailto:jane@example.com">jane@example.com</a>
                                  </div>
                              </div>
                              <div  className="grid grid-cols-2">
                                  <div  className="px-4 py-2 font-semibold">Birthday</div>
                                  <div  className="px-4 py-2">Feb 06, 1998</div>
                              </div>
                              <div  className="grid grid-cols-2">
                                  <div  className="px-4 py-2 font-semibold">Member Since</div>
                                  <div  className="px-4 py-2">Sep 17, 2020</div>
                              </div>
                              <div  className="grid grid-cols-2">
                                  <div  className="px-4 py-2 font-semibold">Designation</div>
                                  <div  className="px-4 py-2">Manager</div>
                              </div>
                          </div>
                      </div>                    
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
