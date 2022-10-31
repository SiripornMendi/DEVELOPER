public class DmlDemo {
    public static void dmlInsertDemo_StndObj1(){
        Account acc = new account();
        acc.Name = 'SoftInnovas';
        acc.Phone = '999999';
        insert acc;
        System.debug(acc);
    }

    public static void dmlInsertDemo_StndObj2(){
        salesforce_project__c sp = new salesforce_project__c();
        sp.project_Name__c = 'Tech DML to Batch9 the great!!!';
        sp.Description__c = 'All 100% are great learners.';
        insert sp;
    }

    public static void dmlUpdateDemo_1(){
        Account acc = new account();
        acc.Name = 'anythinggg';
        System.debug('before Inserting acc ==> ' + acc);
        insert acc;
        System.debug('After Insert acc ==> ' + acc);

        acc.Name = 'Salesforce Inc';
        update acc;
        System.debug('After update acc ==>' + acc);

    }

    public static void dmlUpdateDemo_2(){
        account acc = [select id, name from account where name='softInnovas' limit 1];
        acc.name = 'SoftInnovas Inc.';
        update acc;
    }

    public static void dmlInsertDemo2() {
        account acc = [select id, name from account order by createddate desc limit 1];
        contact cont = new contact();
        cont.lastName = 'Biden';
        cont.AccountId = acc.id;
        insert cont;
    }

    public static void dmlInsertDemo3() {
        salesforce_project__c sp = [select id, name from salesforce_project__c Order by createdDate Desc limit 1];

        salesforce_ticket__c st = new salesforce_ticket__c();
        st.Subject__c = 'Learn Apex';
        st.Description__c = 'Kinda not simple';
        st.Priority__c = 'Hight';
        st.Status__c = 'New';
        st.Requested_by_date__c = date.newInstance(2022, 10, 1);
        st.salesforce_project__c = sp.id;
        insert st;
        System.debug('Salesforce ticket ' + st);
    }

    public static void dmlMultipleRecordInsert_right1() {
        list<account> listAccount = new list<account>();

        account acc1 = new Account();
        acc1.Name = 'Bluk acc 1';
        listAccount.add(acc1);

        account acc2 = new Account();
        acc1.Name = 'Bluk acc 2';
        listAccount.add(acc2);

        account acc3 = new Account();
        acc1.Name = 'Bluk acc 3';
        listAccount.add(acc3);

        insert listAccount;
    }

    public static void dmlMultipleRecordInsert_right2() {
        List<account> listAcc = new List<account>();

        for (Integer i = 0; i < 155; i++) {
            account a = new account();
            a.Name = 'SoftInnovas 3Oct-v' + i;
            a.Active__c = 'Yes';
            listAcc.add(a);
        }
        insert listAcc;
    }

    public static void dmlMultipleRecordInsert_right3() {
        List<account> fetchAccounts = [Select id, name from account order by createddate Desc limit 155];

        List<account> updateAcc = new List<account>();

        for (account eachAcc : fetchAccounts) {
            eachAcc.Name += ' via B.O';
            eachAcc.AccountNumber = '8830940990ABCD';
            updateAcc.add(eachAcc);
        }
        if (!updateAcc.isEmpty()) {
            update updateAcc;
        }
    }
}