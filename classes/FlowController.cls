/*
* https://developer.salesforce.com/docs/atlas.en-us.236.0.apexref.meta/apexref/flow_interview_class.htm
*/
public with sharing class FlowController
{    
    @AuraEnabled
    public static void invokeFlow(string args)
    {
        FlowWrapper wrapper = (FlowWrapper) JSON.deserialize(args, FlowWrapper.class);

        string flowName = wrapper.flowName;
        if (string.isBlank(flowName))
        {
            return;
        }
        
        System.Debug('Invoking Flow: ' + flowName);
        Flow.Interview aFlow;
        
        Map<string, object> inputParameters = (wrapper.inputParameters.size() > 0) ? wrapper.inputParameters : null;
        System.Debug('Input Parameters: ' + inputParameters);

        string namespace = wrapper.namespace;
        if (!string.isBlank(namespace))
        {
            System.Debug('Namespace: ' + namespace);
            aFlow = Flow.Interview.createInterview(namespace, flowName, inputParameters);
        }
        else
        {
            aFlow = Flow.Interview.createInterview(flowName, inputParameters);
        }
        
        aFlow.start();
    }
}