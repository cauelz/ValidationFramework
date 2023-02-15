import { LightningElement, wire } from 'lwc';
import {Redux} from 'c/lwcRedux';
import initialLoad from '@salesforce/apex/TodoCC.initialLoad';
import {initialize} from 'c/todoAppActions';

export default class TodoApp extends Redux(LightningElement) {

    connectedCallback(){
        console.log('entrei connected callback');
        super.connectedCallback();
        // this.props.initialize();
    }

    mapDispatchToProps(){
        return {initialize : initialize};
    }

    @wire(initialLoad)
    init({error, data}) {
        if(data) {
            console.log('entrei wire')
            console.log('data ->' + JSON.stringify(data))
            this.props.initialize(data);
        } else if(error) {
            console.log(error)
        }
    }
}