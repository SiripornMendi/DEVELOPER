trigger ContactTrigger on Contact (before insert, after insert, before update, after update, after delete, after undelete) {

    TriggerSwitch__c accountSwitch = TriggerSwitch__c.getInstance('contact');
    if (accountSwitch.switch__c == false) {
        return;
    }

    if (trigger.isBefore && trigger.isUpdate) {
        ContactTriggerHandler.ContactUpdateValidation1(trigger.new, trigger.old, trigger.newMap, trigger.oldMap);
        ContactTriggerHandler.ContactUpdateValidation2(trigger.new, trigger.old, trigger.newMap, trigger.oldMap);
    }
    if (trigger.isAfter) {
        ContactTriggerHandler.updateNumberOfContact(trigger.new, trigger.old);
    }
}

