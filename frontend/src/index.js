import React from "react";
import ReactDOM from "react-dom";
import "assets/styles/index.css";
import { BrowserRouter, Route, Switch, Redirect } from "react-router-dom";

import "@fortawesome/fontawesome-free/css/all.min.css";
import "assets/styles/tailwind.css";

// layouts

// import Admin from "layouts/Admin.js";
import Auth from "layouts/Auth.js";

// views without layouts

// import Landing from "views/Landing.js";
// import Profile from "views/Profile.js";
// import Index from "views/Index.js";

import BrowseProduct from "views/browseProduct";
import ProductDetail from "views/productDetail";
import Cart from "views/cart";
import Checkout from "views/Checkout";
import ProfilePage from "views/ProfilePage";
import HomePage from "views/HomePage";
import OrderComplete from "views/OrderComplete";



ReactDOM.render(
  <BrowserRouter>
    <Switch>
      {/* add routes with layouts */}
      {/* <Route path="/admin" component={Admin} /> */}
      <Route path="/auth" component={Auth} />
      {/* add routes without layouts */}
      {/* <Route path="/landing" exact component={Landing} />
      <Route path="/profile" exact component={Profile} /> */}
      
      <Route path="/" exact component={HomePage} />
      <Route path="/browseProduct" exact component={BrowseProduct} />
      <Route path="/productDetail" exact component={ProductDetail} />
      <Route path="/cart" exact component={Cart} />
      <Route path="/Checkout" exact component={Checkout} />
      <Route path="/ProfilePage" exact component={ProfilePage} />
      <Route path="/HomePage" exact component={HomePage} />
      <Route path="/OrderComplete" exact component={OrderComplete} />
      {/* add redirect for first page */}
      <Redirect from="*" to="/" />
    </Switch>
  </BrowserRouter>,
  document.getElementById("root")
);
