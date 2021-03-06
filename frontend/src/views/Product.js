import React, { useState, useEffect } from 'react';
import { Link } from "react-router-dom";
import Section from "./Section";
import { useParams } from 'react-router-dom'
import { useDispatch, useSelector } from "react-redux";
import axios from "axios";
import { selectedProduct, removeSelectedProduct } from 'redux/actions/productActions';
import { insertProductInCart, removeProductFromCart,setCart } from 'redux/actions/cartActions';



export default function Product() {


  const product = useSelector((state) => state.product)
  const {productId } = useParams();
  const dispatch = useDispatch();

  console.log(productId);

  const addToCartClick = (product) =>{
    dispatch(insertProductInCart(product));
  }

  const fetchProductDetail = async () => {
    const response = await axios.get(`https://localhost:44391/api/Products/GetProduct/${productId}`)
    .catch((err)=> {
      console.log("Error :",err);
    });
    dispatch(selectedProduct(response.data));
  };
  useEffect(() => {
    if(productId && productId !="") fetchProductDetail();
    return () => {
      dispatch(removeSelectedProduct());
    }
  }, [productId]);
  return (

      <main className="profile-page">
        <Section />
            <section className="relative py-16 bg-blueGray-200">
              <div className=" mx-auto px-4">
               <div className="relative flex flex-col min-w-0 break-words bg-white w-full mb-6 shadow-xl rounded-lg -mt-64">
                <div className="px-6 py-6">
                 <div className="flex flex-wrap justify-center">
                 {/* Product detail starts here */}
                 {Object.keys(product).length===0?(
                   <div>...Loading</div>
                 ):(
                 <section className="text-gray-700 body-font overflow-hidden bg-white">
                    <div className="container px-5 py-24 mx-auto">
                   <a href="#" className="flex font-semibold text-blueGray-800 text-lg pb-10 mt-10">
                   <Link to="/Products" >Back </Link>
                   </a>
                    <div className="lg:w-4/5 mx-auto flex flex-wrap">
                      <img alt="ecommerce" className="lg:w-1/2 object-cover object-center rounded border border-gray-200" src="https://www.rugvista.no/image/desk_pdp_zoom/352769.jpg"/>
                      <div className="lg:w-1/2 lg:pl-10 pl-24 lg:py-6 mt-6 lg:mt-0">
                        <h2 className="text-sm title-font text-gray-500 tracking-widest">House Of Carpets</h2>
                        <h1 className="text-gray-900 text-3xl title-font font-medium mb-1">{product.name}</h1>
                        <div className="flex mb-4">
                          <span className="flex items-center">
                            <svg fill="currentColor" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" className="w-4 h-4 text-red-500" viewBox="0 0 24 24">
                              <path d="M12 2l3.09 6.26L22 9.27l-5 4.87 1.18 6.88L12 17.77l-6.18 3.25L7 14.14 2 9.27l6.91-1.01L12 2z"></path>
                            </svg>
                            <svg fill="currentColor" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" className="w-4 h-4 text-red-500" viewBox="0 0 24 24">
                              <path d="M12 2l3.09 6.26L22 9.27l-5 4.87 1.18 6.88L12 17.77l-6.18 3.25L7 14.14 2 9.27l6.91-1.01L12 2z"></path>
                            </svg>
                            <svg fill="currentColor" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" className="w-4 h-4 text-red-500" viewBox="0 0 24 24">
                              <path d="M12 2l3.09 6.26L22 9.27l-5 4.87 1.18 6.88L12 17.77l-6.18 3.25L7 14.14 2 9.27l6.91-1.01L12 2z"></path>
                            </svg>
                            <svg fill="currentColor" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" className="w-4 h-4 text-red-500" viewBox="0 0 24 24">
                              <path d="M12 2l3.09 6.26L22 9.27l-5 4.87 1.18 6.88L12 17.77l-6.18 3.25L7 14.14 2 9.27l6.91-1.01L12 2z"></path>
                            </svg>
                            <svg fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" className="w-4 h-4 text-red-500" viewBox="0 0 24 24">
                              <path d="M12 2l3.09 6.26L22 9.27l-5 4.87 1.18 6.88L12 17.77l-6.18 3.25L7 14.14 2 9.27l6.91-1.01L12 2z"></path>
                            </svg>
                            <span className="text-gray-600 ml-3">4 Reviews</span>
                          </span>
                          <span className="flex ml-3 pl-3 py-2 border-l-2 border-gray-200">
                            <a className="text-gray-500">
                              <svg fill="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" className="w-5 h-5" viewBox="0 0 24 24">
                                <path d="M18 2h-3a5 5 0 00-5 5v3H7v4h3v8h4v-8h3l1-4h-4V7a1 1 0 011-1h3z"></path>
                              </svg>
                            </a>
                            <a className="ml-2 text-gray-500">
                              <svg fill="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" className="w-5 h-5" viewBox="0 0 24 24">
                                <path d="M23 3a10.9 10.9 0 01-3.14 1.53 4.48 4.48 0 00-7.86 3v1A10.66 10.66 0 013 4s-4 9 5 13a11.64 11.64 0 01-7 2c9 5 20 0 20-11.5a4.5 4.5 0 00-.08-.83A7.72 7.72 0 0023 3z"></path>
                              </svg>
                            </a>
                            <a className="ml-2 text-gray-500">
                              <svg fill="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" className="w-5 h-5" viewBox="0 0 24 24">
                                <path d="M21 11.5a8.38 8.38 0 01-.9 3.8 8.5 8.5 0 01-7.6 4.7 8.38 8.38 0 01-3.8-.9L3 21l1.9-5.7a8.38 8.38 0 01-.9-3.8 8.5 8.5 0 014.7-7.6 8.38 8.38 0 013.8-.9h.5a8.48 8.48 0 018 8v.5z"></path>
                              </svg>
                            </a>
                          </span>
                        </div>
                        <p className="leading-relaxed h-20">{product.description}</p>
                        <div className="flex mt-6 items-center pb-5 border-b-2 border-gray-200 mb-5">
                          <div className="flex">
                            <span className="mr-3">Color</span>
                            <button className="border-2 border-gray-300 rounded-full w-6 h-6 focus:outline-none"></button>
                            <button className="border-2 border-gray-300 ml-1 bg-gray-700 rounded-full w-6 h-6 focus:outline-none"></button>
                            <button className="border-2 border-gray-300 ml-1 bg-red-500 rounded-full w-6 h-6 focus:outline-none"></button>
                          </div>
                        </div>
                        <div className="flex mt-16">
                          <span className="title-font font-medium text-2xl text-gray-900">$580.00</span>
                          <button className="flex ml-auto text-white bg-blueGray-800 border-0 py-2 px-6 focus:outline-none hover:bg-red-600 rounded" onClick={()=>addToCartClick(product)}>
                          Add to Cart
                          </button>

                          <button className="flex ml-auto text-white bg-blueGray-800 border-0 py-2 px-6 focus:outline-none hover:bg-red-600 rounded">
                          <Link to="/BrowseProduct"> Continue Shopping </Link>
                            </button>
                        </div>
                        <div className="flex mt-16">
                        <button className="flex ml-auto text-white bg-blueGray-800 border-0 py-2 px-6 focus:outline-none hover:bg-red-600 rounded">
                          <Link to="/Cart"> Cart </Link>
                          </button>
                          </div>
                      </div>
                    </div>
                  </div>
                </section>
                 )}
                 {/* Product detail ends here */}
              </div>
            </div>
          </div>
        </div>
      </section>
    </main>

  );
}
