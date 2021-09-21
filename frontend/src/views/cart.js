import React, { useState, useEffect } from 'react';
import { Link } from "react-router-dom";

import Navbar from "components/Navbars/AuthNavbar.js";
import Footer from "components/Footers/Footer.js";
import Section from "./Section";

export default function Cart() {
  const [data, setData] = useState([]);
  useEffect(() => {
    fetch('https://localhost:44391/api/Products/GetProducts')
      .then((res) => res.json())
      .then((data) => {
        setData(data);
      })
      .catch((err) => {
        console.log(err);
      });
  }, []);
    return (
    <>
      <Navbar transparent />
      <main className="profile-page">
        <Section />
            <section className="relative py-16 bg-blueGray-200">
              <div className=" mx-auto px-4">
              <div className="relative flex flex-col min-w-0 break-words bg-white w-full mb-6 shadow-xl rounded-lg -mt-64">
                <div className="px-6 py-6">
                <div className="flex flex-wrap justify-center">    
                                {/* cart starts here */}
                 <div className="container mx-auto mt-10">
                 <Link className="text-black bold" to="/productDetail" >Back </Link>
                 
                  <div className="flex shadow-md my-10">
                    <div className="w-3/4 bg-white px-10 py-10">
                      <div className="flex justify-between border-b pb-8">
                        <h1 className="font-semibold text-2xl">Shopping Cart</h1>
                        <h2 className="font-semibold text-2xl">3 Items</h2>
                      </div>
                      <div className="flex mt-10 mb-5">
                        <h3 className="font-semibold text-gray-600 text-xs uppercase w-2/5">Product Details</h3>
                        <h3 className="font-semibold text-center text-gray-600 text-xs uppercase w-1/5">Quantity</h3>
                        <h3 className="font-semibold text-center text-gray-600 text-xs uppercase w-1/5">Price</h3>
                        <h3 className="font-semibold text-center text-gray-600 text-xs uppercase w-1/5">Total</h3>
                      </div>

                      {/* <!-- product start --> */}
                      {
                   data.map((product)=>(
                    <div className="flex items-center hover:bg-gray-100 -mx-8 px-6 py-5">
                        <div className="flex w-2/5">                          
                          <div className="w-20">
                            <img className="h-24" src="https://drive.google.com/uc?id=18KkAVkGFvaGNqPy2DIvTqmUH_nk39o3z" alt=""/>
                          </div>
                          <div className="flex flex-col justify-between ml-4 flex-grow">
                            <span className="font-bold text-sm">{product.name }</span>
                            <span className="text-red-500 text-xs">{product.description}</span>
                            <a href="#" className="font-semibold hover:text-red-500 text-gray-500 text-xs">Remove</a>
                          </div>
                        </div>
                        <div className="flex justify-center w-1/5">
                          <svg className="fill-current text-gray-600 w-3" viewBox="0 0 448 512"><path d="M416 208H32c-17.67 0-32 14.33-32 32v32c0 17.67 14.33 32 32 32h384c17.67 0 32-14.33 32-32v-32c0-17.67-14.33-32-32-32z"/>
                          </svg>

                          <input className="mx-2 border text-center w-8" type="text" value="1"/>          

                          <svg className="fill-current text-gray-600 w-3" viewBox="0 0 448 512">
                            <path d="M416 208H272V64c0-17.67-14.33-32-32-32h-32c-17.67 0-32 14.33-32 32v144H32c-17.67 0-32 14.33-32 32v32c0 17.67 14.33 32 32 32h144v144c0 17.67 14.33 32 32 32h32c17.67 0 32-14.33 32-32V304h144c17.67 0 32-14.33 32-32v-32c0-17.67-14.33-32-32-32z"/>
                          </svg>
                        </div>
                        <span className="text-center w-1/5 font-semibold text-sm">{product.price}</span>
                        <span className="text-center w-1/5 font-semibold text-sm">$400.00</span>
                      </div>
                   ))}
                      
                          {/* <!-- product end --> */}

                      <a href="#" className="flex font-semibold text-indigo-600 text-sm mt-10">
                        <Link to="browseProduct"> Continue Shopping </Link>
                      </a>
                    </div>
                    <div id="summary" className="w-1/4 px-8 py-10 bg-green-500">
                      <h1 className="font-semibold text-2xl border-b pb-8">Order Summary</h1>
                      <div className="flex justify-between mt-10 mb-5">
                        <span className="font-semibold text-sm uppercase">Items 3</span>
                        <span className="font-semibold text-sm">590$</span>
                      </div>
                      <div>
                        <label className="font-medium inline-block mb-3 text-sm uppercase">delivery</label>
                        <select className="block p-2 text-gray-600 w-full text-sm">
                          <option>Standard delivery - free</option>
                          <option>Same day delivery - $20.00</option>
                        </select>
                      </div>
                      <div className="py-10">
                        <label for="promo" className="font-semibold inline-block mb-3 text-sm uppercase">Promo Code</label>
                        <input type="text" id="promo" placeholder="Enter your code" className="p-2 text-sm w-full"/>
                      </div>
                      <button className="bg-red-500 hover:bg-red-600 px-5 py-2 text-sm text-white uppercase">Apply</button>
                      <div className="flex justify-between mt-10 mb-5">
                        <span className="font-semibold text-sm uppercase">VAT</span>
                        <span className="font-semibold text-sm">30$</span>
                      </div>
                      <div className="border-t mt-8">
                        <div className="flex font-semibold justify-between py-6 text-sm uppercase">
                          <span>Total cost</span>
                          <span>$620</span>
                        </div>
                        <Link to="checkout">
                          <button className="bg-indigo-500 font-semibold hover:bg-indigo-600 py-3 text-sm text-white uppercase w-full">
                            Checkout 
                          </button>
                        </Link>
                      </div>
                    </div>
                  </div>
                </div>
                  {/* Cart ends here */}
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
