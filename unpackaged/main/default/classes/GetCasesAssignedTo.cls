public with sharing class GetCasesAssignedTo {
    @AuraEnabled
    public static List<Case> getCasesList(Id userId) {
        return [
            SELECT Id, CaseNumber, OwnerId, Owner.Name, AccountId, 
            Account.Name, Subject, Description, CreatedDate, Status, Priority
            FROM Case 
             
            WITH USER_MODE
            ORDER BY CreatedDate ASC 
            LIMIT 100
        ];
    }
}