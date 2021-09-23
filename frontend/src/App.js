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

import Products from "views/Products"
import Product from "views/Product";
import Cart from "views/Cart"
import Checkout from "views/checkout";
import Profile from "views/Profile";
import HomePage from "views/HomePage";
import OrderComplete from "views/OrderComplete";
import Subscription from "views/Subscription";
import Section from "views/Section";



export default function App() {
 return (

      <Switch >
      <Route exact path="/" render={() => (
         <div>
          <Navbar transparent/>
            <Products />
          <Footer/>
          </div>
        )} />
        <Route exact path="/Products" render={() => (
         <div>
          <Navbar transparent/>
            <Products />
          <Footer/>
          </div>
        )} />
         <Route exact path="/Product/:productId" render={() => (
          <div>
          <Navbar transparent/>
            <Product />
          <Footer/>
          </div>
        )} />
        <Route exact path="/Cart" render={() => (
          <div>
          <Navbar transparent/>
            <Cart />
          <Footer/>
          </div>
        )} />
        <Route exact path="/Checkout" render={() => (
          <div>
          <Navbar transparent/>
            <Checkout />
          <Footer/>
          </div>
        )} />
        <Route exact path="/OrderComplete" render={() => (
          <div>
          <Navbar transparent/>
            <OrderComplete />
          <Footer/>
          </div>
        )} />
        <Route exact path="/" render={() => (
          <div>
          <Navbar transparent/>
            <HomePage />
          <Footer/>
          </div>
        )} />
        <Route exact path="/Profile" render={() => (
          <div>
          <Navbar transparent/>
            <Profile />
          <Footer/>
          </div>
        )} />
        <Route exact path="/Subscription" render={() => (
          <div>
          <Navbar transparent/>
            <Subscription />
          <Footer/>
          </div>
        )} />
      <Route path="/auth" component={Auth} />

      <Redirect from="*" to="/" />
      </Switch>

  ) }
