# lwc-action-button
Easily create Quick Action buttons and trigger flows for Lightning Web Components.

# How to Use
Create a new Lightning Web Component that inherits from the `quickActionFlowController.js` class.
Use the `args` variable to set which flow to run.

## LWC Example
### Javascript file
```JavaScript
import QuickActionFlowController from 'c/quickActionFlowController';

export default class ARandomClassName extends QuickActionFlowController 
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

### XML file
```XML
<?xml version="1.0" encoding="UTF-8"?>
<LightningComponentBundle xmlns="http://soap.sforce.com/2006/04/metadata">
    <apiVersion>52.0</apiVersion>
    <isExposed>true</isExposed>

    <targets>
        <target>lightning__RecordAction</target>
    </targets>

    <targetConfigs>
        <targetConfig targets="lightning__RecordAction">
            <actionType>Action</actionType>
        </targetConfig>
    </targetConfigs>
</LightningComponentBundle>
```

### HTML file
```HTML
<template>
</template>
```

# sfdx-module-template
This framework was built with the [sfdx module template](https://github.com/Arketek/sfdx-module-template).
