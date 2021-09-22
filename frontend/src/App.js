import React from "react";
import ReactDOM from "react-dom";
import "assets/styles/index.css";
import { BrowserRouter, Route, Switch, Redirect } from "react-router-dom";
import Navbar from "components/Navbars/AuthNavbar.js";
import Footer from "components/Footers/Footer.js";

import "@fortawesome/fontawesome-free/css/all.min.css";
import "assets/styles/tailwind.css";

// layouts

// import Admin from "layouts/Admin.js";
import Auth from "layouts/Auth.js";

// views without layouts

// import Landing from "views/Landing.js";
// import Profile from "views/Profile.js";
// import Index from "views/Index.js";

import BrowseProduct from "views/BrowseProduct";
import ProductDetail from "views/ProductDetail";
import Cart from "views/Cart";
import Checkout from "views/checkout";
import Profile from "views/Profile";
import HomePage from "views/HomePage";
import OrderComplete from "views/OrderComplete";
import Subscription from "views/Subscription";
import Section from "views/Section";



export default function App() {
 return (
     <>
    {/* <Navbar transparent />
    <HomePage />
    <Profile />
    <Subscription />
    <BrowseProduct />
    <ProductDetail />
    <Cart />
    <Checkout />
    <OrderComplete />    

    <Footer /> */}

      <Switch >
      <Route exact path="/BrowseProduct" render={() => (
          <>
          <Navbar transparent/>
            <BrowseProduct />
          <Footer/>
          </>
        )} />
         <Route exact path="/ProductDetail" render={() => (
          <>
          <Navbar transparent/>
            <ProductDetail />
          <Footer/>
          </>
        )} />
        <Route exact path="/Cart" render={() => (
          <>
          <Navbar transparent/>
            <Cart />
          <Footer/>
          </>
        )} />
        <Route exact path="/Checkout" render={() => (
          <>
          <Navbar transparent/>
            <Checkout />
          <Footer/>
          </>
        )} />
        <Route exact path="/OrderComplete" render={() => (
          <>
          <Navbar transparent/>
            <OrderComplete />
          <Footer/>
          </>
        )} />
        <Route exact path="/" render={() => (
          <>
          <Navbar transparent/>
            <HomePage />
          <Footer/>
          </>
        )} />
        <Route exact path="/Profile" render={() => (
          <>
          <Navbar transparent/>
            <Profile />
          <Footer/>
          </>
        )} />
        <Route exact path="/Subscription" render={() => (
          <>
          <Navbar transparent/>
            <Subscription />
          <Footer/>
          </>
        )} />
      <Route path="/auth" component={Auth} />
      {/* <Route exact path="/" component={HomePage} /> */}
      {/* <Route exact path="/BrowseProduct" component={BrowseProduct} /> */}
      {/* <Route exact path="/ProductDetail" component={ProductDetail} /> */}
      {/* <Route exact path="/Cart" component={Cart} /> */}
      {/* <Route exact path="/Checkout" component={Checkout} /> */}
      {/* <Route exact path="/Profile" component={Profile} /> */}
      {/* <Route exact path="/HomePage" component={HomePage} /> */}
      {/* <Route exact path="/OrderComplete" component={OrderComplete} /> */}
      {/* <Route exact path="/Subscription" component={Subscription} /> */}

      {/* add redirect for first page */}
      <Redirect from="*" to="/" />
      </Switch>   
  </>
  ) }
