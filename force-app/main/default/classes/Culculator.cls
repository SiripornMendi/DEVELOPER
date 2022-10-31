public class Culculator {
    public void printNewMessage(string msg){
        System.debug(msg);
    }

    //return type is "String" instead of "Void"
    public string printAndReturnMessage(string msg){
        string returnStr = msg + '....OK Cool';
        return returnStr;
    }
}
