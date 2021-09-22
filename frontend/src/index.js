import React from "react";
import ReactDOM from "react-dom";
import "assets/styles/index.css";
import { BrowserRouter, Route, Switch, Redirect } from "react-router-dom";
import App from "./App.js"
import Navbar from "components/Navbars/AuthNavbar.js";
import Footer from "components/Footers/Footer.js";

import "@fortawesome/fontawesome-free/css/all.min.css";
import "assets/styles/tailwind.css";

ReactDOM.render(
  <BrowserRouter>
  {/* <Navbar /> */}
     <App />
     {/* <Footer /> */}
  </BrowserRouter>,
  document.getElementById("root")
);
