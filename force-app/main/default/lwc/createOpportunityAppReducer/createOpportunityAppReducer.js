import {INITIALIZE_APP, ADD_QUANTITY, SUBTRACT_QUANTITY, ADD_OPPORTUNITY} from 'c/createOpportunityAppConstant';

const initialState = {
    opportunitiesById:{}
}

const reducers = (state = initialState, action) => {
    switch (action.type) {
        case INITIALIZE_APP:
            const payload = action.payload;
            return {
                ...state,
                opportunitiesById:{...payload}
            }
    
        default:
            return state;
    }
}

export default {
    reducers: reducers
}