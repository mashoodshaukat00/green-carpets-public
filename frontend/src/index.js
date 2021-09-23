import React from "react";
import ReactDOM from "react-dom";
import "assets/styles/index.css";
import { BrowserRouter, Route, Switch, Redirect } from "react-router-dom";
import { Provider } from "react-redux";
import store from "redux/store.js";

import App from "./App.js"
import Navbar from "components/Navbars/AuthNavbar.js";
import Footer from "components/Footers/Footer.js";

import "@fortawesome/fontawesome-free/css/all.min.css";
import "assets/styles/index.css"
import "assets/styles/tailwind.css"

ReactDOM.render(
  <Provider store={store}>
  <BrowserRouter>
     {/* <Navbar /> */}
     <App />
     {/* <Footer /> */}
  </BrowserRouter>,
  </Provider>,
  document.getElementById("root")
);
