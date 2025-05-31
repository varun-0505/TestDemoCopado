public class OfficeManager {
    public static void markAsOpen(Id officeId) {
        Office__c office = [SELECT Id, Status__c FROM Office__c WHERE Id = :officeId LIMIT 1];
        office.Status__c = 'Open';
        update office;
    }
}