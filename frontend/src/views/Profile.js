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
            }}
          >
            <span
              id="blackOverlay"
              className="w-full h-full absolute opacity-50 bg-black"
            ></span>
          </div>
          {/* Background ends here */}


          <div
            className="top-auto bottom-0 left-0 right-0 w-full absolute pointer-events-none overflow-hidden h-70-px"
            style={{ transform: "translateZ(0)" }}
          >
            <svg
              className="absolute bottom-0 overflow-hidden"
              xmlns="http://www.w3.org/2000/svg"
              preserveAspectRatio="none"
              version="1.1"
              viewBox="0 0 2560 100"
              x="0"
              y="0"
            >
              <polygon
                className="text-blueGray-200 fill-current"
                points="2560 0 2560 100 0 100"
              ></polygon>
            </svg>
          </div>
          {/* background bottom ends here */}
        </section>


        <section className="relative py-16 bg-blueGray-200">
          <div className="container mx-auto px-4">
            <div className="relative flex flex-col min-w-0 break-words bg-white w-full mb-6 shadow-xl rounded-lg -mt-64">
              <div className="px-6">
                <div className="flex flex-wrap justify-center">
                <div className="container px-4 mx-auto">
  <div className="flex flex-wrap">
    <div className="w-3/6 px-4">
      <span className="text-sm block my-4 p-3 text-blueGray-700 rounded border border-solid border-blueGray-100">One of three columns</span>
    </div>
    <div className="w-3/6 px-4">
      <span className="text-sm block my-4 p-3 text-blueGray-700 rounded border border-solid border-blueGray-100">One of three columns</span>
    </div>
    <div className="w-3/6 px-4">
      <span className="text-sm block my-4 p-3 text-blueGray-700 rounded border border-solid border-blueGray-100">One of three columns</span>
    </div>
    <div className="w-3/6 px-4">
      <span className="text-sm block my-4 p-3 text-blueGray-700 rounded border border-solid border-blueGray-100">One of three columns</span>
    </div>
    <div className="w-3/6 px-4">
      <span className="text-sm block my-4 p-3 text-blueGray-700 rounded border border-solid border-blueGray-100">One of three columns</span>
    </div>
    <div className="w-3/6 px-4">
      <span className="text-sm block my-4 p-3 text-blueGray-700 rounded border border-solid border-blueGray-100">One of three columns</span>
    </div>
  </div>
</div>
             </div>
             </div>
             </div>
          </div>
        </section>
      </main>
      <Footer />
    </>
  );
}
