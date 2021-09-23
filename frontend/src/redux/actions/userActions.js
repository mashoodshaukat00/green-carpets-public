import { ActionTypes } from "redux/constants/action-types";

export const setLoginData = (loginData) =>{
    return {
        type: ActionTypes.USER_LOGGED_IN,
        payload: loginData
    }
}