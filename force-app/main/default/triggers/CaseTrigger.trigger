trigger CaseTrigger on Case (before insert, before update) {
    if (trigger.isInsert) {
        System.debug('Before insert case');
    }
    if (trigger.isUpdate) {
        CaseTriggerHandler.countTriggerExecution++;
        System.debug('Case trigger execution count ==> ' + CaseTriggerHandler.countTriggerExecution);
        CaseTriggerHandler.countTriggerRecords += trigger.size;
        System.debug('Case trigger record count ==> ' + CaseTriggerHandler.countTriggerRecords);
    }
}