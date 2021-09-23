import { ActionTypes } from "redux/constants/action-types";

const initialState = {
  cartItemCount:0,
  items:[],

}

export const productInCartReducer = (state = initialState, { type, payload }) => {
  console.log("Hello : ",state.items);
    switch (type) {
      case ActionTypes.SET_CART:
      case ActionTypes.TOTAL_CART_ITEMS:
        return{...state};
      case ActionTypes.ADD_TO_CART:
        if(state.cartItemCount===0){
          let cart = {
              id:payload.id,
              quantity:1,
              name: payload.name,
              imageUrl:payload.imageUrl,
              price:payload.price
          }
          state.items.push(cart);
      }
      else{
          let check = false;
          state.items.map((item,key) => {
              if(item.id===payload.id){
                  state.items[key].quantity++;
                  check=true;
              }
          });
          if(!check){
              let _cart = {
                  id:payload.id,
                  quantity:1,
                  name:payload.name,
                  image:payload.image,
                  price:payload.price
              }
              state.items.push(_cart);
          }
      }
      return{
          ...state,
          cartItemCount:state.cartItemCount+1
      }
      case ActionTypes.REMOVE_FROM_CART:
          return state.items.filter(element => element !== payload);
      case ActionTypes.INCREASE_QUANTITY:
            state.cartItemCount++
            state.items[payload].quantity++;

           return{...state}
     case ActionTypes.INCREASE_QUANTITY:
            state.cartItemCount++
            state.items[payload].quantity++;
           return{...state}   
    case ActionTypes.DECREASE_QUANTITY:
            let quantity = state.items[payload].quantity;
            if(quantity>1){
                state.cartItemCount--;
                state.items[payload].quantity--;
            }
            return{...state}

    case ActionTypes.DELETE_CART:
            let quantity_ = state.items[payload].quantity;
            return{
                ...state,
                cartItemCount:state.cartItemCount - quantity_,
                items:state.items.filter(item=>{
                    return item.id!=state.items[payload].id
                })
            }
      default:
        return state;
    }
  };
