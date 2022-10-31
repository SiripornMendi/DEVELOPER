public class ListDemo {
    public static string candidatesList(integer i) {
        List<string> listCandiates = new List<string>();
        listCandiates.add('Marc');
        listCandiates.add('Elon');
        listCandiates.add('Bill');
        listCandiates.add('Marc');
        System.debug('Candidates list is ' + listCandiates);
        string returnStr = '';
        if (i >= 0 && i < listCandiates.size()) {
            returnStr = listCandiates[i];
        }else {
            returnStr = 'No Values Found';
        }
        return returnStr;
    }

    public static void randomIntegerList(){
        List<Integer> listInteger = new List<Integer>();
        listInteger.add(10);
        listInteger.add(15);
        listInteger.add(25);
        listInteger.add(15);
        listInteger.add(10);
        System.debug('List of random integer is ' + listInteger);

        integer index3Value = listInteger.get(3);
        System.debug('index 3 value is ' + index3Value);

        integer index2Value = listInteger[2];
        System.debug(' index 2 value is ' + index2Value);
    }

    public static void allCats(){
        Cat falconCat = new Cat('fluffykins', 'white');
        Cat aomCat = new Cat('Happy', 'Black');
        Cat ekrosCat = new Cat('Cinemon', 'Brown');

        List<Cat> cats = new List<Cat>();
        cats.add(falconCat);
        cats.add(aomCat);
        cats.add(falconCat);
        cats.add(aomCat);
        cats.add(ekrosCat);
        cats.add(ekrosCat);
        System.debug('All cats are ' + cats);

        if(!cats.isEmpty()){
            cat index3 = cats[3];
            System.debug('Cat at index 3 is ' + index3);
        }
    }
}
