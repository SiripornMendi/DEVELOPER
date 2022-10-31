public class Cat {
    public string name = '';
    public string color = '';

    public Cat(string n, string clr){
        name = n;
        color = clr;
        sleeping();
    }

    public void sleeping(){
        System.debug(name + ' is sleeping');
    }
    
    public Cat(){
        System.debug('Cat constructor called');
    }

}
