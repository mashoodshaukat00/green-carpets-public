import React, { useState, useEffect } from 'react';
import axios from 'axios';
import { Link } from "react-router-dom";

import Navbar from "components/Navbars/AuthNavbar.js";
import Footer from "components/Footers/Footer.js";
// import { Link } from "heroicons-react";

export default function BrowseProduct() {
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
      {/* <ul>
      {data.map((item) => (
        <li key={item.id}>{item.name}</li>
      ))}
    </ul>   */}
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
            className="top-auto bottom-0 left-0 right-0 w-full absolute pointer-events-none overflow-hidden h-70-px"
            style={{ transform: "translateZ(0)" }}>
            <svg
              className="absolute bottom-0 overflow-hidden"
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
             <div className="relative  min-w-0 break-words bg-gray-200 w-full mb-6 shadow-xl rounded-lg -mt-64">
              <div className="px-6 py-6">
               <div className=" justify-center">
                  {/* Grid starts here */}
                  <div className="flex flex-wrap rounded-lg shadow-lg overflow-hidden -mx-2 md:-mx-1 lg:-mx-2 xl:-mx-2 bg-green">

                    {data.map(product =>(
                      <div className="my-2 px-2 w-1/3 py-6 overflow-hidden sm:w-full md:my-1 md:px-1 md:w-full lg:my-2 lg:px-2 lg:w-1/3 xl:my-2 xl:px-2 xl:w-1/3">
                      <article className="overflow-hidden rounded-lg shadow-lg border-2 border-solid pt-6">
                              <Link to="productDetail">
                                <a href="#">                            
                                  <img alt="Placeholder" className="block h-auto w-65 px-4 mx-auto rounded-lg" src="https://picsum.photos/600/400/?random"/>
                                </a>
                              </Link>
                            <header className="flex items-center justify-between leading-tight p-4 md:p-4">
                                <h1 className="text-lg">
                                    <a className="no-underline hover:underline text-black">
                                    <Link to="productDetail">{product.name}</Link>                                    
                                    </a>
                                </h1>
                                <p className="text-red-500 text-sm">
                                    $ 59,99
                                </p>
                            </header>
                            {/* <footer className="flex items-center justify-between leading-none p-4 md:p-4 overflow-x-scroll">                                                
                                <p className="  text-sm">
                                  {product.description}
                                </p>                                             
                            </footer>                         */}
                              <div className="flex flex-row h-10 w-full rounded-lg relative bg-transparent px-4 mt-1 mb-5">
                                <button data-action="decrement" className=" bg-blueGray-800 text-white hover:text-gray-700 hover:bg-gray-400 h-full w-600 rounded-l cursor-pointer outline-none">
                                  <span className="m-auto text-2xl font-thin">−</span>
                                </button>
                                <input type="number" className="focus:outline-none text-center w-full bg-gray-300 font-semibold text-md hover:text-black focus:text-black  md:text-basecursor-default flex items-center text-gray-700  outline-none" name="custom-input-number" value="0"/>
                                <button data-action="increment" className="bg-blueGray-800 text-white hover:text-gray-700 hover:bg-gray-400 h-full w-600 rounded-r cursor-pointer">
                                  <span className="m-auto text-2xl font-thin">+</span>
                                </button>
                            </div>
                            <Link to="cart">
                              <button className="flex ml-auto mx-auto mb-4 justify-center text-white bg-blueGray-800 border-0 py-2 px-6 focus:outline-none hover:bg-red-600 rounded">
                                Buy 
                              </button>
                            </Link>
                            </article>
                      </div>
                        )     
                        )}
                    </div>
                    {/* Grid ends here */}
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
