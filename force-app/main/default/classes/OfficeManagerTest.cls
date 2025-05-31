@isTest
private class OfficeManagerTest {
    @isTest
    static void testMarkAsOpen() {
        // Step 1: Create a test Office__c record
        Office__c testOffice = new Office__c(Name = 'Main Branch', Status__c = 'Closed');
        insert testOffice;

        // Step 2: Call the method
        OfficeManager.markAsOpen(testOffice.Id);

        // Step 3: Retrieve updated record and verify
        Office__c updatedOffice = [SELECT Status__c FROM Office__c WHERE Id = :testOffice.Id];
        System.assertEquals('Open', updatedOffice.Status__c);
    }
}