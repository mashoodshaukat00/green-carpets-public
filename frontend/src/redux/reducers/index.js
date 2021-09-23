import { combineReducers } from "redux";
import { productReducer, selectedProductsReducer } from "./productReducer";
// import { cartReducer, productInCartReducer } from "./cartReducer";
import { productInCartReducer } from "./cartReducer";
import { userReducer } from "./userReducer";


const reducers = combineReducers({
    allProducts: productReducer,
    product:selectedProductsReducer,
    cartData:productInCartReducer,
    sessionData:userReducer,
});

export default reducers;