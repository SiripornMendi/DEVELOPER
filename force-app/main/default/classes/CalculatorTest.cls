@isTest
public class CalculatorTest {
    @isTest
    private static void testCalculartor(){
        Culculator calc = new Culculator();
        calc.printNewMessage('This is coming from a test method. So chill');
    }

    @isTest
    private static void testCalPrint2(){
        Culculator calc = new Culculator();
        string returnmsg = calc.printAndReturnMessage('This is coming from a test method. So chill');
        string expectedReturnMsg = 'This is coming from a test method, again. so chill..... OK Cool';
        System.assertEquals(expectedReturnMsg, returnmsg);
    }
}
