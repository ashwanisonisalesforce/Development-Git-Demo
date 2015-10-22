public with sharing class Ctl_TestPercent {
    public Contact con {get;set;}

    public Ctl_TestPercent() {
        con = [SELECT Id,Percent_14_4__c FROM Contact WHERE Id='003280000054WD6'];
    }

     @remoteAction
    public static Decimal findCon() {
        Contact thisCon = [SELECT Id,Percent_14_4__c FROM Contact WHERE Id='003280000054WD6'];
        return thisCon.Percent_14_4__c;
    }
}