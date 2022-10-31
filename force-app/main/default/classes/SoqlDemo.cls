public class SoqlDemo {
    public static void accountSOQL_1(){
        list<account> listAcc = [select id, name, phone, active__c from account where name like '%A%'];
        system.debug('account list ===> ' + listAcc);
        system.debug('listAcc # of records ===> ' + listAcc.size());

        Account acc = [select id, name, phone, active__c from account ORDER BY CreatedDate desc limit 1];
        system.debug('latest created record ===> ' + acc);
    }

    public static void accountSOQL_2() {
        Account acc = [select id, name, phone, active__c, AccountNumber from account ORDER BY CreatedDate desc limit 1];
        system.debug('Lastest created record ===> ' + acc);
        string accName = acc.Name;
        string accPhone = acc.Phone;
        system.debug('AccName = ' + accName + ', phone is ' + accPhone);
        system.debug('Account number is ' + acc.AccountNumber);
    }

    public static void accountSOQL_3() {
        list<account> listAcc = [select id, name, phone, active__c, AccountNumber from account ORDER BY CreatedDate desc];
        system.debug('account list ===> ' + listAcc);

        for (account eachAccount : listAcc) {
            string accName = eachAccount.Name;
            string accPhone = eachAccount.phone;
            system.debug('acc name is ' + accName + ' phone is ' + accPhone + ', acc number =' + eachAccount.AccountNumber);
            system.debug('--------------------');
        } 
    }

    public static void accountSOQL_Filter(){
        string filterName = 'Salesforce Inc.';
        List<account> listAcc = [select id, name, active__c from account where name = :filterName];
        system.debug('filter name ==> ' + listAcc);
    }

    public static void accountSOQL_Filter(string accName){
        List<account> listAcc = [select id, name, active__c from account where name = :accName];
        system.debug('filter name ==> ' + listAcc);
    }
}