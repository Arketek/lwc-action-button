public with sharing class FlowWrapper 
{
    @AuraEnabled public string namespace {get; set;}
    @AuraEnabled public string flowName {get; set;}

    @AuraEnabled public Map<string, string> inputParameters {get; set;}
}
