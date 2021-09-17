import React from "react";
import { Link } from "react-router-dom";

import Navbar from "components/Navbars/AuthNavbar.js";
import Footer from "components/Footers/Footer.js";

export default function Checkout() {
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
                  {/* shipping detail starts here */}
                  {/* <!-- component --> */}
                  <div className="leading-loose">
                    <form className="max-w-xl m-4 p-10 bg-white rounded shadow-xl">
                      <a href="#" className="flex font-semibold text-blueGray-800 text-lg pb-6 mt-2">
                      <Link className="text-black bold" to="/cart" >Back </Link>
                      </a>
                      <p className="text-gray-800 font-medium">Customer information</p>
                      <div className="">
                        <label className="block text-sm text-gray-00" for="cus_name">Name</label>
                        <input className="w-full px-5 py-1 text-gray-700 bg-gray-200 rounded" id="cus_name" name="cus_name" type="text" required="" placeholder="Your Name" aria-label="Name"/>
                      </div>
                      <div className="mt-2">
                        <label className="block text-sm text-gray-600" for="cus_email">Email</label>
                        <input className="w-full px-5  py-4 text-gray-700 bg-gray-200 rounded" id="cus_email" name="cus_email" type="text" required="" placeholder="Your Email" aria-label="Email"/>
                      </div>
                      <div className="mt-2">
                        <label className=" block text-sm text-gray-600" for="cus_email">Address</label>
                        <input className="w-full px-2 py-2 text-gray-700 bg-gray-200 rounded" id="cus_email" name="cus_email" type="text" required="" placeholder="Street" aria-label="Email"/>
                      </div>
                      <div className="mt-2">
                        <label className="  text-sm block text-gray-600" for="cus_email">City</label>
                        <input className="w-full px-2 py-2 text-gray-700 bg-gray-200 rounded" id="cus_email" name="cus_email" type="text" required="" placeholder="City" aria-label="Email"/>
                      </div>
                      <div className="inline-block mt-2 w-1/2 pr-1">
                        <label className="  block text-sm text-gray-600" for="cus_email">Country</label>
                        <input className="w-full px-2 py-2 text-gray-700 bg-gray-200 rounded" id="cus_email" name="cus_email" type="text" required="" placeholder="Country" aria-label="Email"/>
                      </div>
                      <div className="inline-block mt-2 -mx-1 pl-1 w-1/2">
                        <label className="  block text-sm text-gray-600" for="cus_email">Zip</label>
                        <input className="w-full px-2 py-2 text-gray-700 bg-gray-200 rounded" id="cus_email"  name="cus_email" type="text" required="" placeholder="Zip" aria-label="Email"/>
                      </div>
                      <p className="mt-4 text-gray-800 font-medium">Payment information</p>
                      <div className="">
                        <label className="block text-sm text-gray-600" for="cus_name">Card</label>
                        <input className="w-full px-2 py-2 text-gray-700 bg-gray-200 rounded" id="cus_name" name="cus_name" type="text" required="" placeholder="Card Number" aria-label="Name"/>
                      </div>
                      <div className="inline-block mt-2 w-1/2 pr-1">
                        <label className="  block text-sm text-gray-600" for="cus_email">Expiry Date</label>
                        <input className="w-full px-2 py-2 text-gray-700 bg-gray-200 rounded" id="cus_email" name="cus_email" type="text" required="" placeholder="MM/YY" aria-label="Email"/>
                      </div>
                      <div className="inline-block mt-2 -mx-1 pl-1 w-1/2">
                        <label className="  block text-sm text-gray-600" for="cus_email">CVC</label>
                        <input className="w-full px-2 py-2 text-gray-700 bg-gray-200 rounded" id="cus_email"  name="cus_email" type="text" required="" placeholder="CVC" aria-label="Email"/>
                      </div>
                      <div className="mt-4">
                      <Link to="OrderComplete">
                        <button className="w-full ml-auto inline-block text-white bg-blueGray-800 border-0 py-2 px-6 focus:outline-none hover:bg-red-600 rounded">
                           Pay $580.00                         
                        </button>
                      </Link>
                      </div>
                    
                    </form>
                  </div>
                  {/* Shipping detail ends here */}
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
