public class PrimitiveDataTypeDemo {
    public void printBasicDataType(){
        system.debug('Printing primitive datatypes');
        string batchName = 'batch 9';
        integer totalCandidates = 70;
        boolean isAdminCompleted = true;

        system.debug(batchName);
        system.debug(totalCandidates);
        system.debug(isAdminCompleted);

        string batchDescription = batchName + ' is fantastic.';
        system.debug(batchDescription);


        decimal decValue = 12345678.22;
        system.debug(decValue);

        long longValue = 1234567898;
        system.debug(longValue);

        Object obj = 'This is a string';
        Object obj2 = 40.5;
        Object obj3 = true;
        system.debug(obj);
        system.debug(obj2);
        system.debug(obj3);

        Id id1 = '00B8V00000CL4spUAD';
        system.debug('id 1 is --> ' + id1);
    }
}