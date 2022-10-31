@isTest 
public class AccountBatchTest {
    @isTest 
    private static void testBatch1() {
        List<account> listAcc = new List<account>();
        for (Integer i = 0; i < 900; i++) {
            account a = new account();
            a.Name = 'SoftInnovas 3Oct-v' + i;
            a.Active__c = 'Yes';
            listAcc.add(a);
        }
        insert listAcc;

        Test.startTest();
        AccountBatch ab = new AccountBatch();
        Database.executeBatch(ab, 950);
        Test.stopTest();

        List<Account> results = [Select id, description from account];
        System.assert(results[0].Description.contains('Batch'));
    }
}
