# lwc-action-button
Easily create Quick Action buttons for Lightning Web Components.

# How to use
Create a new Lightning Web Component that inherits from the `quickActionFlowController.js` class
```JavaScript
import FlowController from 'c/quickActionFlowController';

export default class ARandomClassName extends FlowController 
{
    args =  
    {
        namespace: null,  
        flowName: 'FLOW_NAME_API',
        inputParameters: {
            RecordId: null
        }
    };

    constructor()
    {
        super();
    }

    execute()
    {
        this.args.inputParameters.RecordId = this.recordId;

        super.execute(this.args);
    }
}
```

# sfdx-module-template
This framework was built with the [sfdx module template](https://github.com/Arketek/sfdx-module-template).
