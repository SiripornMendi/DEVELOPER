@isTest
public class SoqlChildToParentTest {
    @TestSetup
    static void makeData(){
       //prepare data
       account acc1 = new account();
       acc1.Name = 'SI Test';
       acc1.Industry = 'Energy';

       account acc2 = new account();
       acc2.Name = 'UI Test';
       acc2.Industry = 'Energy';

       account acc3 = new account();
       acc3.Name = 'PI Test';
       acc3.Industry = 'Banking';

       List<account> accList = new List<account> {acc1, acc2, acc3};
       insert accList;

       List<contact> listContact = new list<contact>();
       for (Integer i = 0; i < 300; i++) {
           contact c = new contact();
           c.LastName = 'Soql test ' + i;
           if (i< 100) {
               c.AccountId = acc1.id;
           } else if (i < 200) {
               c.AccountId = acc2.id;
           } else {
              c.accountid = acc3.id;
           }
           listContact.add(c);
       }
       insert listContact;
    }   

    @isTest
    public static void testSOQLParentToChild(){
            test.startTest();
            SoqlChildToParent.childToParent_SOQL1();
            test.stopTest();
    }

    @isTest
    Private static void parentToChild_SOQL2(){
        list<Account> listAcc = [Select id , type , name from account];
        for (account acc : listAcc) {
            acc.Type = 'Customer - Direct';
        }
        update listAcc;

        //create opportunity for account created in testSetup method
        List<Opportunity> listOpp = new List<Opportunity>();
        for (Integer i = 0; i < 300; i++) {
            opportunity o = new opportunity();
            o.Name = ' test opp' + i;
            o.StageName = 'Closed Won';
            o.CloseDate = Date.today();
            if (i < 100) {
                o.AccountId = listAcc[0].Id;
            } else if (i < 200) {
                o.AccountId = listAcc[1].Id;
            } else if (i < 300) {
                o.AccountId = listAcc[2].Id;
            }
            listOpp.add(o);
        }
        insert listOpp;
        Test.startTest();
        SoqlChildToParent.parentToChild_SOQL1();
        Test.stopTest();
    }
}