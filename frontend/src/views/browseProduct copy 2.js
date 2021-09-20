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
    {data.map(product =>(
       <div className="container px-4 mx-auto">
       <div className="flex flex-wrap">
         <div className="w-1/3 px-4 flex-1" key={product.id}>
           <span className="text-sm my-4 p-3 text-blueGray-700 rounded border border-solid border-blueGray-100">
             {/* card starts here */}
             {/* <!-- Column --> */}
             <div className="my-1 px-1 w-1/3 flex-1 md:w-1/2 lg:my-4 lg:px-4 lg:w-1/3 pl-2">

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
                     <Link to="productDetail">{product.name}</Link>                                    
                     </a>
                 </h1>
                 <p className="text-grey-darker text-sm">
                     $ 59,99
                 </p>
             </header>
             <footer className="flex items-center justify-between leading-none p-4 md:p-4">
                 <a className="flex items-center no-underline hover:underline text-black" href="#">                                
                     <p className="  text-sm">
                         {product.description}
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

    )     
    )}
      
    
      <Footer />
    </>
  );
}
