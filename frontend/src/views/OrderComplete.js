import React from "react";
import { Link } from "react-router-dom";

import Navbar from "components/Navbars/AuthNavbar.js";
import Footer from "components/Footers/Footer.js";
import Section from "./Section";

export default function OrderComplete() {
  return (
    <>
      <Navbar transparent />
      <main className="profile-page">
        <Section />        
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
