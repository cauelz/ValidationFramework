import {INITIALIZE_APP, ADD_QUANTITY, SUBTRACT_QUANTITY, ADD_OPPORTUNITY} from 'c/createOpportunityAppConstant';

export const initialize = (data) => {
    return {
      type:ACTION_INITIALIZE_APP,
      payload: JSON.parse(JSON.stringify(data))
    }
  }