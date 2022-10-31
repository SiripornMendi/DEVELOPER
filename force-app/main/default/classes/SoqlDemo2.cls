public class SoqlDemo2 {
    public static void childToParent_SOQL1(){
        list<contact> listContact = [select name, phone, account.name, account.industry, account.phone from contact where account.industry = 'Energy'];
        for (contact eachContact : listContact) {
            string accName = eachContact.account.name;
            string accIndustry = eachContact.account.industry;
            string accPhone = eachContact.account.phone;
            System.debug('Contact name is ' + eachContact.Name + ', its account name is' + accName);   
        }
    }
    
    public static void parentToChild_SOQL1(){
        list<Account> accountWithOpps = [select id, name, annualRevenue, type, (select name, amount, stageName from opportunities where stageName = 'Closed Won') from account where type = 'Customer - Direct'];
        for (account eachAcc : accountWithOpps) {
            System.debug('Account name is ' + eachAcc.name + ' and annual revenue is ' + eachAcc.annualRevenue);
            System.debug('---------');
            list<Opportunity> accOpportunities = eachAcc.opportunities;
            for (Opportunity eachOpp : accOpportunities) {
                System.debug('Opp name is ' + eachOpp.name + ' and amount is ' + eachOpp.amount);
            }
            System.debug('==============');
        }
    }

    public static void parentToChild_SOQL2() {
        List<salesforce_project__c> listSP = [select name, project_name__c, status__c, 
                                ( select name, subject__c, priority__c from salesforce_tickets__r ) 
                                from salesforce_project__c];
        integer totalHP = 0;
        for (salesforce_project__c eachSP : listSP) {
            system.debug('project name IS ' + eachSP.Project_Name__c + ' and autonumber is ' + eachSP.Name);
            List<Salesforce_Ticket__c> listST = eachSP.Salesforce_Tickets__r;
            system.debug('total tickets in ' + eachSP.Name + ' are ' + listST.size());

            integer eachProjectHP = 0;
            for (salesforce_ticket__c eachST  : listST) {
                if(eachST.priority__c == 'Hight'){
                    eachProjectHP++;
                }
            }
            System.debug('Project # of higth prioirty tickets is ' + eachProjectHP);
        }
        System.debug('Total of high priority tickets is' + totalHP);
    } 
}
