public class AccountUpdateHelper {
    @invocableMethod
    public static void updateAccountWebsit(List<id> accIds) {
        List<account> updateAccounts = new List<account>();
        for (account eachAccount : [Select id, website from account where id in :accIds]) {
            eachAccount.Website = 'www.softinnovas.com';
            updateAccounts.add(eachAccount);
        }
        update updateAccounts;
    }
}
