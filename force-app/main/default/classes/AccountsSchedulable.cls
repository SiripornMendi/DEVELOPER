public class AccountsSchedulable implements Schedulable {
    public void execute(SchedulableContext sc){
        database.executeBatch(new accountBatch());
    }
}
