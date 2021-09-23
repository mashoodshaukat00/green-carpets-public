import { ActionTypes } from "redux/constants/action-types";

const initialState = {
    products:[]
}

export const productReducer =(state = initialState, {type, payload}) => {
    switch (type) {
        case ActionTypes.SET_PRODUCTS:
                return {...state, products:payload};
        default:
            return state;
    }
}

export const selectedProductsReducer = (state = {}, { type, payload }) => {
    console.log(type);
    switch (type) {
      case ActionTypes.SELECTED_PRODUCT:
        return { ...state, ...payload };
      case ActionTypes.REMOVE_SELECTED_PRODUCT:
        return {};
      default:
        return state;
    }
  };

  /**
        {
        fetchedAt: "2021-09-23T08:25:29.780Z",
        id: 1,
        categoryId: 1,
        category:"carpets",
        supplier:"first supplier",
        supplierId: 1,
        branchId: 1,
        name: "my product",
        description: "very good product",
        quantity: 100,
        price: 10
    } */
