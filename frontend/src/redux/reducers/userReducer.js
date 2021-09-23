import { ActionTypes } from "redux/constants/action-types";

const initialState = {
    userData:null
}

export const userReducer =(state = initialState, {type, payload}) => {
    switch (type) {
        case ActionTypes.USER_LOGGED_IN:
                return {...state, userData:payload};
        case ActionTypes.USER_LOGGED_OUT:
            return {};
        default:
            return state;
    }
}