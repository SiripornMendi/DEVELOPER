//updating description of all accounts
//Also getting statistics using stateful
public class AccountBatch implements Database.Batchable<SObject>{
    public integer count = 0;
    integer numberOfRecords = 0;
    //start method soql query 
    public Database.QueryLocator start(Database.BatchableContext bc){
        //write query and SObject is Account object
        System.debug('Batch started. congrat!!!');
        Database.QueryLocator ql = database.getQueryLocator([Select id, description from account]);
        return ql;
    }
    //update dml happening in execute method.
    public void execute(Database.BatchableContext be, List<Account> scope){
        System.debug('Execute Method Running!!!');
        for (account acc : scope) {
            acc.Description += '..... Update via Batch';
        }
        numberOfRecords += scope.size();
        count++;
        System.debug('Count is ' + count);
        System.debug('Number of records updated till no is : ' + numberOfRecords);
        update scope;
    }
    //finish method called once all records are processed.
    public void finish(Database.BatchableContext bc){
        system.System.debug('Finish method executed. Batch done. Not Simple!!!');
    }
}