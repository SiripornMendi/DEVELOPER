try{
    list<account> lacc;
    Account ac = new Account();
    lacc.add(ac);
    insert ac;
} catch(DmlException dx){
    System.debug('Dml went wrong buddy');
    //it castch the big one and did not catch on DmlException
} catch(Exception ex) {
    System.debug('something went wroing buddy.');
}
//will below line print? -- No
System.debug('Apex is SIMPLE');