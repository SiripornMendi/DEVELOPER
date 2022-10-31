public class SetDemo {
    public static void citySet() {
        set<string> cities = new set<string>();
        cities.add('Bangkok');
        cities.add('Istanbul');
        cities.add('Lisbon');
        cities.add('Berlin');
        cities.add('Bangkok');
        cities.add('Istanbul');
        cities.add('BANGKOK');
        System.debug('Set of cities = ' + cities);
    }

    public static void randomIntegerSet(){
        set<integer> integerSet = new set<integer>();
        integerSet.add(10);
        integerSet.add(15);
        integerSet.add(19);
        integerSet.add(21);
        integerSet.add(15);
        integerSet.add(15);
        System.debug('Set of random integer = ' + integerSet);
    }

    public static set<integer> setFromList(list<integer> inList){
        set<integer> setOfInt = new set<integer>();
        setOfInt.addAll(inList);
        return setOfInt;
    }

    public static set<string> capitalizeAllSet(set<string> setString){
        set<string> returnSet = new set<string>();

        for (string eachStr : setString){
            string tempStr = eachStr.toUpperCase();
            returnSet.add(tempStr);
        }
        return returnSet;
    }
}
