public class StringDemoClass {
    public void stringMethod1(){
        string sessionDescription = 'Learning string method in apex language';
        System.debug(sessionDescription);

        //1.length
        integer lengthOfStr = sessionDescription.length();
        System.debug('Length of string is ' + lengthOfStr);

        string sessionDescriptionInCaps = sessionDescription.toUpperCase();
        System.debug('In caps = ' + sessionDescriptionInCaps);

        boolean containApex = sessionDescription.contains('apex');
        System.debug('has apex? ' + containApex);

        Boolean containsSalesforce = sessionDescription.contains('salesforce');
        System.debug('has salesforce? ' + containsSalesforce);

        string s1 = 'salesforce';
        boolean containsSalesforce1 = sessionDescription.contains(s1);
        System.debug('has salesforce? ' + containsSalesforce1);
    }
}
