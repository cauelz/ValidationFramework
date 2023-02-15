import { LightningElement } from 'lwc';
import {Redux} from 'c/lwcRedux';
import {VISIBILITY_FILTER} from 'c/todoAppConstant';
import {setFilter} from 'c/todoAppActions';

export default class TodoFilter extends Redux(LightningElement) {
    visibilityFilter = VISIBILITY_FILTER
    mapDispatchToProps(){
        return {setFilter : setFilter}
    }
    handleClick(event){
        this.props.setFilter(event.target.value);
    }
}