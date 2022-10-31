public class  CalculatorSimple{
    public static integer add(integer a, integer b){
        integer sum = a + b;
        return sum;
    }

    public static integer add(integer a, integer b, integer c){
        integer sum = a + b + c;
        return sum;
    }

    public static integer add(List<integer> inList){
        integer returnSum = 0;
        for (integer eachInteger : inList) {
            returnSum = returnSum + eachInteger;
        }
        return returnSum;
    }
}
