import React from "react";
import { Link } from "react-router-dom";

import Navbar from "components/Navbars/AuthNavbar.js";
import Footer from "components/Footers/Footer.js";
// import { Link } from "heroicons-react";

export default function BrowseProduct() {
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
             <div className="relative flex flex-col min-w-0 break-words bg-white w-full mb-6 shadow-xl rounded-lg -mt-64">
              <div className="px-6 py-6">
               <div className="flex flex-wrap justify-center">                             
               
                  {/* Grid starts here */}

                <div className="container px-4 mx-auto">
                  <div className="flex flex-wrap">
                    <div className="w-full px-4 flex-1">
                      <span className="text-sm block my-4 p-3 text-blueGray-700 rounded border border-solid border-blueGray-100">
                        {/* card starts here */}
                        {/* <!-- Column --> */}
                        <div className="my-1 px-1 w-full flex-1 md:w-1/2 lg:my-4 lg:px-4 lg:w-1/3 pl-2">

                         {/* <!-- Article --> */}
                         <article className="overflow-hidden rounded-lg shadow-lg">
                         <Link to="productDetail">
                          <a href="#">                            
                              <img alt="Placeholder" className="block h-auto w-60 mx-auto rounded" src="https://picsum.photos/600/400/?random"/>                              
                          </a>
                          </Link>
                        <header className="flex items-center justify-between leading-tight p-4 md:p-4">
                            <h1 className="text-lg">
                                <a className="no-underline hover:underline text-black">
                                <Link to="productDetail">Product Title</Link>                                    
                                </a>
                            </h1>
                            <p className="text-grey-darker text-sm">
                                $ 59,99
                            </p>
                        </header>
                        <footer className="flex items-center justify-between leading-none p-4 md:p-4">
                            <a className="flex items-center no-underline hover:underline text-black" href="#">                                
                                <p className="  text-sm">
                                    Description:Lorem Ipsum is simply dummy text of the printing and typesetting industry
                                </p>
                            </a>                            
                        </footer>                        
                          <div className="flex flex-row h-10 w-full rounded-lg relative bg-transparent px-4 mt-1 mb-5">
                            <button data-action="decrement" className=" bg-gray-300 text-gray-600 hover:text-gray-700 hover:bg-gray-400 h-full w-600 rounded-l cursor-pointer outline-none">
                              <span className="m-auto text-2xl font-thin">−</span>
                            </button>
                            <input type="number" className="focus:outline-none text-center w-full bg-gray-300 font-semibold text-md hover:text-black focus:text-black  md:text-basecursor-default flex items-center text-gray-700  outline-none" name="custom-input-number" value="0"/>
                            <button data-action="increment" className="bg-gray-300 text-gray-600 hover:text-gray-700 hover:bg-gray-400 h-full w-600 rounded-r cursor-pointer">
                              <span className="m-auto text-2xl font-thin">+</span>
                            </button>
                        </div>
                        <Link to="cart">
                          <button className="flex ml-auto mx-auto mb-4 justify-center text-white bg-blueGray-800 border-0 py-2 px-6 focus:outline-none hover:bg-red-600 rounded">
                            Buy 
                          </button>
                        </Link>
                        </article>

                        {/* <!-- END Article --> */}

                        </div>

                        {/* <!-- END Column --> */}
                        {/* card ends here */}

                      </span>
                    </div>
                    <div className="w-full px-4 flex-1">
                      <span className="text-sm block my-4 p-3 text-blueGray-700 rounded border border-solid border-blueGray-100">
                         {/* card starts here */}
                        {/* <!-- Column --> */}
                        <div className="my-1 px-1 w-full flex-1 md:w-1/2 lg:my-4 lg:px-4 lg:w-1/3 pl-2">

                         {/* <!-- Article --> */}
                         <article className="overflow-hidden rounded-lg shadow-lg">
                          <a href="#">
                          <Link to="productDetail">
                          <img alt="Placeholder" className="block h-auto  w-60 mx-auto rounded" src="https://picsum.photos/600/400/?random"/>
                            </Link>
                          </a>
                        <header className="flex items-center justify-between leading-tight p-4 md:p-4">
                            <h1 className="text-lg">
                                <a className="no-underline hover:underline text-black" href="#">
                                <Link to="productDetail"> Product Title </Link>
                                </a>
                            </h1>
                            <p className="text-grey-darker text-sm">
                                $ 59,99
                            </p>
                        </header>
                        <footer className="flex items-center justify-between leading-none p-4 md:p-4">
                            <a className="flex items-center no-underline hover:underline text-black" href="#">                                 
                                <p className=" text-sm">
                                    Description:Lorem Ipsum is simply dummy text of the printing and typesetting industry
                                </p>
                            </a>                            
                        </footer>
                        <div className="flex flex-row h-10 w-full rounded-lg relative bg-transparent px-4 mt-1 mb-5">
                            <button data-action="decrement" className=" bg-gray-300 text-gray-600 hover:text-gray-700 hover:bg-gray-400 h-full w-600 rounded-l cursor-pointer outline-none">
                              <span className="m-auto text-2xl font-thin">−</span>
                            </button>
                            <input type="number" className="focus:outline-none text-center w-full bg-gray-300 font-semibold text-md hover:text-black focus:text-black  md:text-basecursor-default flex items-center text-gray-700  outline-none" name="custom-input-number" value="0"/>
                          <button data-action="increment" className="bg-gray-300 text-gray-600 hover:text-gray-700 hover:bg-gray-400 h-full w-600 rounded-r cursor-pointer">
                            <span className="m-auto text-2xl font-thin">+</span>
                          </button>
                        </div>
                        <Link to="cart">
                          <button className="flex ml-auto mx-auto mb-4 justify-center text-white bg-blueGray-800 border-0 py-2 px-6 focus:outline-none hover:bg-red-600 rounded">
                             Buy 
                          </button>
                        </Link>
                        </article>

                        {/* <!-- END Article --> */}

                        </div>

                        {/* <!-- END Column --> */}
                        {/* card ends here */}
                      </span>
                    </div>
                    <div className="w-full px-4 flex-1">
                      <span className="text-sm block my-4 p-3 text-blueGray-700 rounded border border-solid border-blueGray-100">
                         {/* card starts here */}
                        {/* <!-- Column --> */}
                        <div className="my-1 px-1 w-full flex-1 md:w-1/2 lg:my-4 lg:px-4 lg:w-1/3 pl-2">

                         {/* <!-- Article --> */}
                         <article className="overflow-hidden rounded-lg shadow-lg">
                          <a href="#">
                          <Link to="productDetail">
                          <img alt="Placeholder" className="block h-auto  w-60 mx-auto rounded" src="https://picsum.photos/600/400/?random"/>
                             </Link>
                              
                          </a>
                        <header className="flex items-center justify-between leading-tight p-4 md:p-4">
                            <h1 className="text-lg">
                                <a className="no-underline hover:underline text-black" href="#">
                                <Link to="productDetail"> Product Title </Link>
                                </a>
                            </h1>
                            <p className="text-grey-darker text-sm">
                                $ 59,99
                            </p>
                        </header>
                        <footer className="flex items-center justify-between leading-none p-4 md:p-4">
                            <a className="flex items-center no-underline hover:underline text-black" href="#">                                 
                                <p className="  text-sm">
                                    Description:Lorem Ipsum is simply dummy text of the printing and typesetting industry
                                </p>
                            </a>                            
                        </footer>
                        <div className="flex flex-row h-10 w-full rounded-lg relative bg-transparent px-4 mt-1 mb-5">
                            <button data-action="decrement" className=" bg-gray-300 text-gray-600 hover:text-gray-700 hover:bg-gray-400 h-full w-600 rounded-l cursor-pointer outline-none">
                              <span className="m-auto text-2xl font-thin">−</span>
                            </button>
                            <input type="number" className="focus:outline-none text-center w-full bg-gray-300 font-semibold text-md hover:text-black focus:text-black  md:text-basecursor-default flex items-center text-gray-700  outline-none" name="custom-input-number" value="0"/>
                          <button data-action="increment" className="bg-gray-300 text-gray-600 hover:text-gray-700 hover:bg-gray-400 h-full w-600 rounded-r cursor-pointer">
                            <span className="m-auto text-2xl font-thin">+</span>
                          </button>
                        </div>
                        <Link to="cart">
                          <button className="flex ml-auto mx-auto mb-4 justify-center text-white bg-blueGray-800 border-0 py-2 px-6 focus:outline-none hover:bg-red-600 rounded">
                             Buy 
                          </button>
                        </Link>
                        </article>

                        {/* <!-- END Article --> */}

                        </div>

                        {/* <!-- END Column --> */}
                        {/* card ends here */}
                      </span>
                    </div>
                  </div>
                  <div className="flex flex-wrap">  
                    <div className="w-full px-4 flex-1">
                      <span className="text-sm block my-4 p-3 text-blueGray-700 rounded border border-solid border-blueGray-100">
                         {/* card starts here */}
                        {/* <!-- Column --> */}
                        <div className="my-1 px-1 w-full flex-1 md:w-1/2 lg:my-4 lg:px-4 lg:w-1/3 pl-2">

                         {/* <!-- Article --> */}
                         <article className="overflow-hidden rounded-lg shadow-lg">
                          <a href="#">
                          <Link to="productDetail">
                          <img alt="Placeholder" className="block h-auto  w-60 mx-auto rounded" src="https://picsum.photos/600/400/?random"/>
                          </Link>
                             
                          </a>
                        <header className="flex items-center justify-between leading-tight p-4 md:p-4">
                            <h1 className="text-lg">
                                <a className="no-underline hover:underline text-black" href="#">
                                <Link to="productDetail"> Product Title </Link>
                                </a>
                            </h1>
                            <p className="text-grey-darker text-sm">
                                $ 59,99
                            </p>
                        </header>
                        <footer className="flex items-center justify-between leading-none p-4 md:p-4">
                            <a className="flex items-center no-underline hover:underline text-black" href="#">                                 
                                <p className="  text-sm">
                                    Description:Lorem Ipsum is simply dummy text of the printing and typesetting industry
                                </p>
                            </a>                            
                        </footer>
                        <div className="flex flex-row h-10 w-full rounded-lg relative bg-transparent px-4 mt-1 mb-5">
                            <button data-action="decrement" className=" bg-gray-300 text-gray-600 hover:text-gray-700 hover:bg-gray-400 h-full w-600 rounded-l cursor-pointer outline-none">
                              <span className="m-auto text-2xl font-thin">−</span>
                            </button>
                            <input type="number" className="focus:outline-none text-center w-full bg-gray-300 font-semibold text-md hover:text-black focus:text-black  md:text-basecursor-default flex items-center text-gray-700  outline-none" name="custom-input-number" value="0"/>
                          <button data-action="increment" className="bg-gray-300 text-gray-600 hover:text-gray-700 hover:bg-gray-400 h-full w-600 rounded-r cursor-pointer">
                            <span className="m-auto text-2xl font-thin">+</span>
                          </button>
                        </div>
                        <Link to="cart">
                          <button className="flex ml-auto mx-auto mb-4 justify-center text-white bg-blueGray-800 border-0 py-2 px-6 focus:outline-none hover:bg-red-600 rounded">
                             Buy 
                          </button>
                        </Link>
                        </article>

                        {/* <!-- END Article --> */}

                        </div>

                        {/* <!-- END Column --> */}
                        {/* card ends here */}
                      </span>
                    </div>
                    <div className="w-full px-4 flex-1">
                      <span className="text-sm block my-4 p-3 text-blueGray-700 rounded border border-solid border-blueGray-100">
                         {/* card starts here */}
                        {/* <!-- Column --> */}
                        <div className="my-1 px-1 w-full flex-1 md:w-1/2 lg:my-4 lg:px-4 lg:w-1/3 pl-2">

                         {/* <!-- Article --> */}
                         <article className="overflow-hidden rounded-lg shadow-lg">
                          <a href="#">
                          <Link to="productDetail">
                          <img alt="Placeholder" className="block h-auto  w-60 mx-auto rounded" src="https://picsum.photos/600/400/?random"/>
                          </Link>                              
                          </a>
                        <header className="flex items-center justify-between leading-tight p-4 md:p-4">
                            <h1 className="text-lg">
                                <a className="no-underline hover:underline text-black" href="#">
                                <Link to="productDetail"> Product Title </Link>
                                </a>
                            </h1>
                            <p className="text-grey-darker text-sm">
                                $ 59,99
                            </p>
                        </header>
                        <footer className="flex items-center justify-between leading-none p-4 md:p-4">
                            <a className="flex items-center no-underline hover:underline text-black" href="#">                                 
                                <p className="  text-sm">
                                    Description:Lorem Ipsum is simply dummy text of the printing and typesetting industry
                                </p>
                            </a>                            
                        </footer>
                        <div className="flex flex-row h-10 w-full rounded-lg relative bg-transparent px-4 mt-1 mb-5">
                            <button data-action="decrement" className=" bg-gray-300 text-gray-600 hover:text-gray-700 hover:bg-gray-400 h-full w-600 rounded-l cursor-pointer outline-none">
                              <span className="m-auto text-2xl font-thin">−</span>
                            </button>
                            <input type="number" className="focus:outline-none text-center w-full bg-gray-300 font-semibold text-md hover:text-black focus:text-black  md:text-basecursor-default flex items-center text-gray-700  outline-none" name="custom-input-number" value="0"/>
                          <button data-action="increment" className="bg-gray-300 text-gray-600 hover:text-gray-700 hover:bg-gray-400 h-full w-600 rounded-r cursor-pointer">
                            <span className="m-auto text-2xl font-thin">+</span>
                          </button>
                        </div>
                        <Link to="cart">
                          <button className="flex ml-auto mx-auto mb-4 justify-center text-white bg-blueGray-800 border-0 py-2 px-6 focus:outline-none hover:bg-red-600 rounded">
                             Buy 
                          </button>
                        </Link>
                        </article>

                        {/* <!-- END Article --> */}

                        </div>

                        {/* <!-- END Column --> */}
                        {/* card ends here */}</span>
                    </div>
                    <div className="w-full px-4 flex-1">
                      <span className="text-sm block my-4 p-3 text-blueGray-700 rounded border border-solid border-blueGray-100">
                         {/* card starts here */}
                        {/* <!-- Column --> */}
                        <div className="my-1 px-1 w-full flex-1 md:w-1/2 lg:my-4 lg:px-4 lg:w-1/3 pl-2">

                         {/* <!-- Article --> */}
                         <article className="overflow-hidden rounded-lg shadow-lg">
                          <a href="#">
                          <Link to="productDetail">
                          <img alt="Placeholder" className="block h-auto w-60 rounded mx-auto" src="https://picsum.photos/600/400/?random"/>
                          </Link> 
                          </a>
                        <header className="flex items-center justify-between leading-tight p-4 md:p-4">
                            <h1 className="text-lg">
                                <a className="no-underline hover:underline text-black" href="#">
                                <Link to="productDetail"> Product Title </Link>
                                </a>
                            </h1>
                            <p className="text-grey-darker text-sm">
                                $ 59,99
                            </p>
                        </header>
                        <footer className="flex items-center justify-between leading-none p-4 md:p-4">
                            <a className="flex items-center no-underline hover:underline text-black" href="#">                                 
                                <p className="  text-sm">
                                    Description:Lorem Ipsum is simply dummy text of the printing and typesetting industry
                                </p>
                            </a>                            
                        </footer>
                        <div className="flex flex-row h-10 w-full rounded-lg relative bg-transparent px-4 mt-1 mb-5">
                            <button data-action="decrement" className=" bg-gray-300 text-gray-600 hover:text-gray-700 hover:bg-gray-400 h-full w-600 rounded-l cursor-pointer outline-none">
                              <span className="m-auto text-2xl font-thin">−</span>
                            </button>
                            <input type="number" className="focus:outline-none text-center w-full bg-gray-300 font-semibold text-md hover:text-black focus:text-black  md:text-basecursor-default flex items-center text-gray-700 outline-none" name="custom-input-number" value="0"/>
                          <button data-action="increment" className="bg-gray-300 text-gray-600 hover:text-gray-700 hover:bg-gray-400 h-full w-600 rounded-r cursor-pointer">
                            <span className="m-auto text-2xl font-thin">+</span>
                          </button>
                        </div>
                        <Link to="cart">
                          <button className="flex ml-auto mx-auto mb-4 justify-center text-white bg-blueGray-800 border-0 py-2 px-6 focus:outline-none hover:bg-red-600 rounded">
                             Buy 
                          </button>
                        </Link>
                      </article>
                        {/* <!-- END Article --> */}

                        </div>

                        {/* <!-- END Column --> */}
                        {/* card ends here */}
                      </span>
                    </div>
                  </div>
                  <div className="flex flex-wrap">
                    <div className="w-full px-4 flex-1">
                      <span className="text-sm block my-4 p-3 text-blueGray-700 rounded border border-solid border-blueGray-100">
                        {/* card starts here */}
                        {/* <!-- Column --> */}
                        <div className="my-1 px-1 w-full flex-1 md:w-1/2 lg:my-4 lg:px-4 lg:w-1/3 pl-2">

                         {/* <!-- Article --> */}
                         <article className="overflow-hidden rounded-lg shadow-lg">
                          <a href="#">
                          <Link to="productDetail">
                          <img alt="Placeholder" className="block h-auto  w-60 mx-auto rounded" src="https://picsum.photos/600/400/?random"/>
                          </Link> 
                          </a>
                        <header className="flex items-center justify-between leading-tight p-4 md:p-4">
                            <h1 className="text-lg">
                                <a className="no-underline hover:underline text-black" href="#">
                                <Link to="productDetail"> Product Title </Link>
                                </a>
                            </h1>
                            <p className="text-grey-darker text-sm">
                                $ 59,99
                            </p>
                        </header>
                        <footer className="flex items-center justify-between leading-none p-4 md:p-4">
                            <a className="flex items-center no-underline hover:underline text-black" href="#">                                 
                                <p className="  text-sm">
                                    Description:Lorem Ipsum is simply dummy text of the printing and typesetting industry
                                </p>
                            </a>                            
                        </footer>
                        <div className="flex flex-row h-10 w-full rounded-lg relative bg-transparent px-4 mt-1 mb-5">
                            <button data-action="decrement" className=" bg-gray-300 text-gray-600 hover:text-gray-700 hover:bg-gray-400 h-full w-600 rounded-l cursor-pointer outline-none">
                              <span className="m-auto text-2xl font-thin">−</span>
                            </button>
                            <input type="number" className="focus:outline-none text-center w-full bg-gray-300 font-semibold text-md hover:text-black focus:text-black  md:text-basecursor-default flex items-center text-gray-700  outline-none" name="custom-input-number" value="0"/>
                          <button data-action="increment" className="bg-gray-300 text-gray-600 hover:text-gray-700 hover:bg-gray-400 h-full w-600 rounded-r cursor-pointer">
                            <span className="m-auto text-2xl font-thin">+</span>
                          </button>
                        </div>
                        <Link to="cart">
                          <button className="flex ml-auto mx-auto mb-4 justify-center text-white bg-blueGray-800 border-0 py-2 px-6 focus:outline-none hover:bg-red-600 rounded">
                             Buy 
                          </button>
                        </Link>
                        </article>

                        {/* <!-- END Article --> */}

                        </div>

                        {/* <!-- END Column --> */}
                        {/* card ends here */}

                      </span>
                    </div>
                    <div className="w-full px-4 flex-1">
                      <span className="text-sm block my-4 p-3 text-blueGray-700 rounded border border-solid border-blueGray-100">
                         {/* card starts here */}
                        {/* <!-- Column --> */}
                        <div className="my-1 px-1 w-full flex-1 md:w-1/2 lg:my-4 lg:px-4 lg:w-1/3 pl-2">

                         {/* <!-- Article --> */}
                         <article className="overflow-hidden rounded-lg shadow-lg">
                          <a href="#">
                          <Link to="productDetail">
                          <img alt="Placeholder" className="block h-auto  w-60 mx-auto rounded" src="https://picsum.photos/600/400/?random"/>
                          </Link> 
                          </a>
                        <header className="flex items-center justify-between leading-tight p-4 md:p-4">
                            <h1 className="text-lg">
                                <a className="no-underline hover:underline text-black" href="#">
                                <Link to="productDetail"> Product Title </Link>
                                </a>
                            </h1>
                            <p className="text-grey-darker text-sm">
                                $ 59,99
                            </p>
                        </header>
                        <footer className="flex items-center justify-between leading-none p-4 md:p-4">
                            <a className="flex items-center no-underline hover:underline text-black" href="#">                                 
                                <p className="  text-sm">
                                    Description:Lorem Ipsum is simply dummy text of the printing and typesetting industry
                                </p>
                            </a>                            
                        </footer>
                        <div className="flex flex-row h-10 w-full rounded-lg relative bg-transparent px-4 mt-1 mb-5">
                            <button data-action="decrement" className=" bg-gray-300 text-gray-600 hover:text-gray-700 hover:bg-gray-400 h-full w-600 rounded-l cursor-pointer outline-none">
                              <span className="m-auto text-2xl font-thin">−</span>
                            </button>
                            <input type="number" className="focus:outline-none text-center w-full bg-gray-300 font-semibold text-md hover:text-black focus:text-black  md:text-basecursor-default flex items-center text-gray-700  outline-none" name="custom-input-number" value="0"/>
                          <button data-action="increment" className="bg-gray-300 text-gray-600 hover:text-gray-700 hover:bg-gray-400 h-full w-600 rounded-r cursor-pointer">
                            <span className="m-auto text-2xl font-thin">+</span>
                          </button>
                        </div>
                        <Link to="cart">
                          <button className="flex ml-auto mx-auto mb-4 justify-center text-white bg-blueGray-800 border-0 py-2 px-6 focus:outline-none hover:bg-red-600 rounded">
                             Buy 
                          </button>
                        </Link>
                        </article>

                        {/* <!-- END Article --> */}

                        </div>

                        {/* <!-- END Column --> */}
                        {/* card ends here */}
                      </span>
                    </div>
                    <div className="w-full px-4 flex-1">
                      <span className="text-sm block my-4 p-3 text-blueGray-700 rounded border border-solid border-blueGray-100">
                         {/* card starts here */}
                        {/* <!-- Column --> */}
                        <div className="my-1 px-1 w-full flex-1 md:w-1/2 lg:my-4 lg:px-4 lg:w-1/3 pl-2">

                         {/* <!-- Article --> */}
                         <article className="overflow-hidden rounded-lg shadow-lg">
                          <a href="#">
                          <Link to="productDetail">
                          <img alt="Placeholder" className="block h-auto  w-60 mx-auto rounded" src="https://picsum.photos/600/400/?random"/>
                          </Link> 
                          </a>
                        <header className="flex items-center justify-between leading-tight p-4 md:p-4">
                            <h1 className="text-lg">
                                <a className="no-underline hover:underline text-black" href="#">
                                <Link to="productDetail"> Product Title </Link>
                                </a>
                            </h1>
                            <p className="text-grey-darker text-sm">
                                $ 59,99
                            </p>
                        </header>
                        <footer className="flex items-center justify-between leading-none p-4 md:p-4">
                            <a className="flex items-center no-underline hover:underline text-black" href="#">                                 
                                <p className="  text-sm">
                                    Description:Lorem Ipsum is simply dummy text of the printing and typesetting industry
                                </p>
                            </a>                            
                        </footer>
                        <div className="flex flex-row h-10 w-full rounded-lg relative bg-transparent px-4 mt-1 mb-5">
                            <button data-action="decrement" className=" bg-gray-300 text-gray-600 hover:text-gray-700 hover:bg-gray-400 h-full w-600 rounded-l cursor-pointer outline-none">
                              <span className="m-auto text-2xl font-thin">−</span>
                            </button>
                            <input type="number" className="focus:outline-none text-center w-full bg-gray-300 font-semibold text-md hover:text-black focus:text-black  md:text-basecursor-default flex items-center text-gray-700  outline-none" name="custom-input-number" value="0"/>
                          <button data-action="increment" className="bg-gray-300 text-gray-600 hover:text-gray-700 hover:bg-gray-400 h-full w-600 rounded-r cursor-pointer">
                            <span className="m-auto text-2xl font-thin">+</span>
                          </button>
                        </div>
                        <Link to="cart">
                          <button className="flex ml-auto mx-auto mb-4 justify-center text-white bg-blueGray-800 border-0 py-2 px-6 focus:outline-none hover:bg-red-600 rounded">
                             Buy 
                          </button>
                        </Link>
                        </article>

                        {/* <!-- END Article --> */}

                        </div>

                        {/* <!-- END Column --> */}
                        {/* card ends here */}
                      </span>
                    </div>
                  </div>
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
