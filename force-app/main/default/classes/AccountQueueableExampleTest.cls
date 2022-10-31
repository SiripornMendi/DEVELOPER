@isTest 
public class AccountQueueableExampleTest {
    @TestSetup
    static void makeData(){
        List<Account> accs = new List<Account>();
        for (Integer i = 0; i < 100; i++) {
            account a = new account(name = 'Test Account' + i);
            accs.add(a);
        }
        insert accs;
    }
    @isTest 
    private static void testQueueable(){
        List<Account> allAccs = [Select id, name from account];
        AccountQueueableExample aq = new AccountQueueableExample(allAccs);
        Test.startTest();
        system.enqueueJob(aq);
        Test.stopTest();

        list<account> resultAcc = [Select id, name from account where name like '%SI%'];
        System.assertEquals(200, resultAcc.size());
    }
}
