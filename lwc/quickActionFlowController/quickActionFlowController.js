import QuickActionController from 'c/quickActionController';
import invokeFlow from '@salesforce/apex/FlowController.invokeFlow';

export default class FlowController extends QuickActionController 
{
    constructor()
    {
        super();
    }
    
    execute(args)
    {
        super.execute();

        invokeFlow({ args: JSON.stringify(this.args) });
    }
}