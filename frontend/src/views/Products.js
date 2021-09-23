import React, { useState, useEffect,useCallback,useMemo } from 'react';
import { Link } from "react-router-dom";
import { setProducts } from 'redux/actions/productActions';
import { useDispatch, useSelector } from "react-redux";
import axios from "axios";
import Section from "./Section";
import ProductsComponent from './ProductsComponant.js';

export default function Products() {
  const products = useSelector((state) => state.allProducts.products);
  const dispatch = useDispatch();
 // const{id,category,supplier,name,description,quantity,price} = products[0];

  const fetchProducts = async () => {
    const response = await axios.get('https://localhost:44391/api/Products/GetProducts')
    .catch((err)=> {
      console.log("Error :",err);
    });

    dispatch(setProducts(response.data));
  };

  useEffect(() => {
    fetchProducts();
  }, []);

  console.log("Products :", products);

  return (
    <div>
      <main className="profile-page">
      <Section />
          <section className="relative py-16 bg-blueGray-200">
            <div className=" mx-auto px-4">
             <div className="relative  min-w-0 break-words bg-gray-200 w-full mb-6 shadow-xl rounded-lg -mt-64">
              <div className="px-6 py-6">
               <div className=" justify-center">
               <div className="flex flex-wrap rounded-lg shadow-lg overflow-hidden -mx-2 md:-mx-1 lg:-mx-2 xl:-mx-2 bg-green">
                  <ProductsComponent/>
                  </div>
              </div>
            </div>
          </div>
        </div>
      </section>
    </main>
    </div>
  );
}
