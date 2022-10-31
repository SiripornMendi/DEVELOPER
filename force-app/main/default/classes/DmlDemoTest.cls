@isTest
public class DmlDemoTest {
  @isTest
  static void dmTest1(){
    DmlDemo.dmlInsertDemo_StndObj1();
    //soql -> it doesn't access anything from org.
    //we will records which are created in THIS test method.
    list<Account> listAcc = [Select id, name from account];
    System.assertEquals(1, listAcc.size());
    System.assertEquals('SoftInnovas', listAcc[0].name);
  }
  @isTest
  private static void dmlUpdateDemoTest2(){
    //1.Prepare Data
    Account acc = new Account();
    acc.Name = 'SoftInnovas';
    insert acc;
    //2.Call method
    DmlDemo.dmlUpdateDemo_2();
    //3.Assert
    //to assert data if we are inserting/updating in our method
    //always fetch data using soql
    List<Account> checkAccount = [Select id, name from account where name = 'SoftInnovas Inc.'];
    System.assertEquals(1, checkAccount.size());
  }

  @isTest
  Public static void dmlDemoTest3(){
    //1.Prepare Data
    salesforce_project__c sp = new salesforce_project__c();
    sp.Project_Name__c = 'Teach DML to Batch9 the great';
    sp.Description__c = 'All 100% are great learners';
    insert sp;
    //2.Call Method
    DmlDemo.dmlInsertDemo3();
    //3.Assert
    List<salesforce_ticket__c> listST = [Select id, subject__c, salesforce_project__c from salesforce_ticket__c where subject__c = 'Learn Apex'];
    System.assertEquals(sp.Id, listST[0].Salesforce_Project__c);
  }
}
