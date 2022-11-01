trigger AccountTrigger on Account (before insert, before update, after insert, after update) {
    //check if switch is on or off for account object
    TriggerSwitch__c accountSwitch = TriggerSwitch__c.getInstance('account');
    if (accountSwitch.switch__c == false) {
        return;
    }

    System.debug('==== trigger start ====');
    if (trigger.isBefore) {
        AccountTriggerHandler.updateDescription(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
    }

    if (Trigger.isAfter && Trigger.isInsert) {

        AccountQueueableExample aq = new AccountQueueableExample(Trigger.new);
        system.enqueueJob(aq);
    }

    if (Trigger.isAfter && Trigger.isUpdate) {
        AccountTriggerHandler.updateVIPforAllContacts(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
    }
    System.debug('==== trigger end ====');
    
}


/* 
system.debug('====trigger start======');
    if (trigger.isBefore) {
        AccountTriggerHandler.updateDescription(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
    }
    system.debug('====trigger end====');

/*if (trigger.isAfter && trigger.isUpdate) {
    integer countWSChanged = 0;
    Map<id, account> newMapAcc = trigger.newMap;
    Map<id, account> oldMapAcc = trigger.oldMap;
    Set<id> accIds = trigger.newMap.keySet();

    for (id eachId : accIds) {
        account oldAcc = oldMapAcc.get(eachId);
        string oldWebSite = oldAcc.Website;

        account newAcc = newMapAcc.get(eachId);
        string newWebSite = newAcc.Website;
        if (oldWebSite != newWebsite) {
            countWSChanged++;
            System.debug('For account ' + newAcc.name + ', website is change to ' + newWebSite);
        }
    }
    System.debug('Total account where website is changed ==> ' + countWSChanged);
}

/*Map<id, account> newMapAcc = trigger.newMap;
Map<id, account> oldMapAcc = trigger.oldMap;
if (trigger.isAfter && trigger.isUpdate) {
    System.debug('After update trigger of Account object.');
    set<id> accIds = newMapAcc.keySet();
    for (id eachId : accIds) {
        System.debug('eachId ==> ' + eachId);
        Account newAccount = newMapAcc.get(eachId);
        System.debug('new account name ==> ' + newAccount.name);
        Account oldAccount = oldMapAcc.get(eachId);
        System.debug('old account name ==> ' + oldAccount.name);
    }
}

/*Map<id, account> newMapAcc = trigger.newMap;
map<id, account> oldMapAcc = trigger.oldMap;
if (trigger.isInsert && trigger.isBefore) {
    system.debug('before insert Trigger.OldMap ==> ' + oldMapAcc);//null
    system.debug('before insert Trigger.NewMap ==> ' + newMapAcc);//n
}
if (trigger.isInsert && trigger.isAfter) {
    system.debug('after insert Trigger.OldMap ==> ' + oldMapAcc);
    system.debug('after insert Trigger.NewMap ==> ' + newMapAcc);
}
if (trigger.isUpdate && trigger.isBefore) {
    system.debug('before update Trigger.OldMap ==> ' + oldMapAcc);
    system.debug('before update Trigger.NewMap ==> ' + newMapAcc);
}
if (trigger.isUpdate && trigger.isAfter) {
    system.debug('after update Trigger.OldMap ==> ' + oldMapAcc);
    system.debug('after update Trigger.NewMap ==> ' + newMapAcc);
}*/

/*if (Trigger.isAfter && Trigger.isUpdate) {
    List<account> oldAccounts = trigger.old;
    for (Account eachAccOld : oldAccounts) {
        system.debug('old id ==> ' + eachAccOld.Id + ' old name ==> ' + eachAccOld.Name);
    }
    List<account> newAccounts = trigger.new;
    for (Account eachAccnew : newAccounts) {
        system.debug('new id ==> ' + eachAccnew.Id + ' new name ==> ' + eachAccnew.Name);
    }
}*/

/*if (trigger.isInsert && trigger.isBefore) {
    System.debug('Before insert Trigger.Old ==> ' + trigger.old);
}
if (trigger.isInsert && trigger.isAfter) {
    System.debug('After insert Trigger.Old ==> ' + trigger.old);
}
if (trigger.isUpdate && trigger.isBefore) {
    System.debug('Before update Trigger.Old ==> ' + trigger.old);
}
if (trigger.isUpdate && trigger.isAfter) {
    System.debug('After update Trigger.Old ==> ' + trigger.old);
}*/

 /*trigger.new   ALWAYS  gives List<sObject>. ALWAYS. Even if we updating/inserting JUST one record.
        ALWAYS list<sObject>
List<account> newAccounts = trigger.new;
why?? Trigger RUNS only once when we process multiple records at a time.
system.debug('number of records --> ' + newAccounts.size());
if (trigger.isBefore && trigger.isUpdate) {
system.debug('before update trigger.new ==> ' + newAccounts);
for (account acc : newAccounts) {
    system.debug('acc id ==> ' + acc.Id + ' + acc name ==> ' + acc.Name);
}
}
if (trigger.isAfter && trigger.isUpdate) {
system.debug('after update trigger.new ==> ' + newAccounts);
for (account acc : newAccounts) {
    system.debug('acc id ==> ' + acc.Id + ' + acc name ==> ' + acc.Name);
}
}*/
   

/*if (Trigger.isBefore) {
        System.debug('Before (insert or update) trigger called');
        if (Trigger.isInsert) {
            System.debug('Before insert account trigger called.');
        }
        if (Trigger.isUpdate) {
            System.debug('Before update account trigger called.');
        }
    }
    
    if (Trigger.isAfter) {
        System.debug('After (insert or update) trigger called');
        if (Trigger.isInsert) {
            System.debug('After insert account trigger called.');
        }
        if (Trigger.isUpdate) {
            System.debug('After update account trigger called.');
        }
    }*/


/*
  if (Trigger.isInsert) {
        System.debug('before insert account trigger called');
    }
    if (Trigger.isUpdate) {
        System.debug('before update account trigger called');
    }*/  

    /*
    ///Print before insert debug only in Before Trigger
    if (Trigger.isBefore) {
        System.debug('before insert account trigger called');
    }
   / //Print before insert debug only in After Trigger
    if (Trigger.isAfter) {
        System.debug('after insert account trigger called');
    }
    
}*/