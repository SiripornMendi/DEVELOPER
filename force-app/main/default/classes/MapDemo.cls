public class MapDemo {
    public static string retrieveMonth(integer m){
        string month = '';
        map<integer, string> mounthMap = new map<integer, string>();
        mounthMap.put(1, 'January');
        mounthMap.put(2, 'February');
        mounthMap.put(3, 'March');
        mounthMap.put(4, 'April');

        mounthMap.put(5, 'May');
        mounthMap.put(6, 'June');
        mounthMap.put(7, 'July');
        mounthMap.put(8, 'August');

        mounthMap.put(9, 'September');
        mounthMap.put(10, 'October');
        mounthMap.put(11, 'November');
        mounthMap.put(12, 'December');

        boolean keyExists = mounthMap.containsKey(m);
        if(keyExists){
            month = mounthMap.get(m);
     } else { 
            month = 'No such month exists. Please behave!!!';
     }
        return month; 
    }
}