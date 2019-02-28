public class GoalInfos {
    @AuraEnabled
    public static list<Case_Line_Item__c> goalsFromCaseLineItem()
    {
        list<Case_Line_Item__c> GoalDetail = [SELECT Id,Name, Date_Closed__c,Status__c,Start_Date__c,Phase_of_Care__c,Details__c FROM Case_Line_Item__c];
        return GoalDetail;
    } 

 @AuraEnabled
    public static user finduserInfo()
    {
        User newuser = [Select id,name from User where id=:UserInfo.getUserId()];
        return newuser;
    } 
}