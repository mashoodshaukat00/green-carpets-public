import { ActionTypes } from "redux/constants/action-types";

export const setCart =(cart) => {
    return {
        type: ActionTypes.SET_CART,
        payload: cart
    };
}

export const GetTotalCartItemCount = ()=>{
    return{
        type: ActionTypes.TOTAL_CART_ITEMS,
    }
}

export const insertProductInCart =(product) => {
    return {
        type: ActionTypes.ADD_TO_CART,
        payload: product
    };
}

export const removeProductFromCart =(product) => {
    return {
        type: ActionTypes.REMOVE_FROM_CART,
        payload: product
    };
}

export function DeleteCart(payload){
    return{
        type:ActionTypes.DELETE_CART,
        payload
    }
}

export function IncreaseQuantity(payload){
    return{
        type:ActionTypes.INCREASE_QUANTITY,
        payload
    }
}
export function DecreaseQuantity(payload){
    return{
        type:ActionTypes.DECREASE_QUANTITY,
        payload
    }
}