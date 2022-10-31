SetDemo.citySet();
SetDemo.randomIntegerSet();

list<integer> listInteger = new list<integer>();
listInteger.add(10);
listInteger.add(15);
listInteger.add(21);
listInteger.add(15);
listInteger.add(15);
set<integer> setInteger = SetDemo.setFromList(listInteger);
system.debug('setInteger ==>> ' + setInteger);

set<string> cities = new set<string>();
        cities.add('Bangkok');
        cities.add('Istanbul');
        cities.add('Lisbon');
        cities.add('Berlin');
        cities.add('Bangkok');
        cities.add('Istanbul');
        cities.add('BANGKOK');
        set<string> capsCities = SetDemo.capitalizeAllSet(cities);
        System.debug('caps cities = ' + capsCities);