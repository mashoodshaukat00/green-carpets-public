import React from "react";
import { Link } from "react-router-dom";
import { useSelector } from "react-redux";
import Product from "./Product";


const ProductsComponent = () => {
  const products = useSelector((state) => state.allProducts.products);
  const renderList = products.map((product) => {

    return (
     <div key={product.id} className="my-2 px-2 w-1/3 py-6 overflow-hidden sm:w-full md:my-1 md:px-1 md:w-full lg:my-2 lg:px-2 lg:w-1/3 xl:my-2 xl:px-2 xl:w-1/3">
     <article className="overflow-hidden rounded-lg shadow-lg border-2 border-solid border-gray-300 pt-6">

             <Link to={`/Product/${product.id}`}>
                 <img alt="Placeholder" className="block h-auto w-65 px-4 mx-auto rounded-lg" src="https://picsum.photos/600/400/?random"/>
             </Link>
           <header className="flex items-center justify-between leading-tight p-4 md:p-4">
               <h1 className="text-lg">
                   <a className="no-underline hover:underline text-black">
                   <Link to={`/Product/${product.id}`}>{product.name} by {product.supplier}</Link>
                   </a>
               </h1>
               <p className="text-red-500 text-sm">
                   Price: {product.price}
               </p>
           </header>
           <footer className="flex items-center justify-between leading-none p-4 md:p-4">
               <p className="  text-sm">
                 {product.description} in {product.category} category.
               </p>
           </footer>
             <div className="flex flex-row h-10 w-full rounded-lg relative bg-transparent px-4 mt-1 mb-5">
               <button data-action="decrement" className=" bg-blueGray-800 text-white hover:text-gray-700 hover:bg-gray-400 h-full w-600 rounded-l cursor-pointer outline-none">
                 <span className="m-auto text-2xl font-thin">−</span>
               </button>
               <input type="number" className="focus:outline-none text-center w-full bg-gray-300 font-semibold text-md hover:text-black focus:text-black  md:text-basecursor-default flex items-center text-gray-700  outline-none" name="custom-input-number" value="0"/>
               <button data-action="increment" className="bg-blueGray-800 text-white hover:text-gray-700 hover:bg-gray-400 h-full w-600 rounded-r cursor-pointer">
                 <span className="m-auto text-2xl font-thin">+</span>
               </button>
           </div>
           <Link to="/Cart">
             <button className="flex ml-auto mx-auto mb-4 justify-center text-white bg-blueGray-800 border-0 py-2 px-6 focus:outline-none hover:bg-red-600 rounded">
               Buy
             </button>
           </Link>
           </article>
     </div>
     );
 });
 return <>{renderList}</>;

};

export default ProductsComponent;