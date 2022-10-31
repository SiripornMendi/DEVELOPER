@isTest
public class Calculator2Test {
    @isTest
    public static void addTest1() {
        Calculator2 c = new Calculator2();
        integer sum = c.add(10, 15);
        System.assertEquals(25, sum);
    }
    @isTest
    public static void addTest2(){
        Calculator2 c = new Calculator2();
        integer sum = c.add(10, 15, 5);
        System.assertEquals(30, sum);
    }

    @isTest
    public static void leapYearTest(){
        Calculator2 y = new Calculator2();
        date dtt = date.newInstance(2000, 01, 01);
        boolean isLeap2 = y.leapYearCheck(dtt);
        System.assertEquals(true, isLeap2);
    }
}
