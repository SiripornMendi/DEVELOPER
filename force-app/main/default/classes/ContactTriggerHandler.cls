public class ContactTriggerHandler {
    public static void ContactUpdateValidation1(List<Contact>              contTriggerNew, List<Contact> contTriggerOld, Map<id, Contact> contTriggerNewMap, Map<id, Contact> contTriggerOldMap) {

        for (contact eachCnt : contTriggerNew) {
            contact oldContact = contTriggerOldMap.get(eachCnt.id);
            if (eachCnt.LeadSource == 'Partner Referral') {
                eachCnt.addError('Cannot update \'Partner Referral\' contacts');
            }
        }
    }

    public static void ContactUpdateValidation2(List<Contact>              contTriggerNew, List<Contact> contTriggerOld, Map<id, Contact> contTriggerNewMap, Map<id, Contact> contTriggerOldMap){

        for (contact eachCnt : contTriggerNew) {
            if (eachCnt.LeadSource != contTriggerOldMap.get(eachCnt.id).LeadSource) {
                string customValidation = system.label.ContactValidation2;
                eachCnt.LeadSource.addError(customValidation);
            }
        }
    }

    public static void updateNumberOfContact(List<Contact> contTriggerNew, List<Contact> contTriggerOld){
        set<id> accountIds = new set<id>();
        if (trigger.isInsert || Trigger.isUpdate || trigger.isUndelete) {
            for (contact eachCont : contTriggerNew) {
                accountIds.add(eachCont.AccountId);
            }
        }
        if (trigger.isUpdate || Trigger.isDelete) {
            for (contact eachCont : contTriggerOld) {
                accountIds.add(eachCont.AccountId);
            }
        }
        if (!accountIds.isEmpty()) {
            List<Account> listAcc = [Select id, Number_of_contacts__c, (select id from contacts) from account where id in :accountIds];

            List<account> updateAcc = new List<account>();
            for (account eachAcc : listAcc) {
                eachAcc.Number_of_contacts__c = eachAcc.contacts.size();
                updateAcc.add(eachAcc);
            }
            update updateAcc;
        }
    }
}
