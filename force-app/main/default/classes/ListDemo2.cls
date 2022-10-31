public class ListDemo2 {
    public static void iterateListInteger() {
        List<Integer> listInteger = new List<Integer>();
        listInteger.add(10);
        listInteger.add(15);
        listInteger.add(25);
        listInteger.add(15);
        listInteger.add(15);

        for (Integer eachInteger : listInteger) {
            System.debug(eachInteger);
        }
    }
}
