public class LoopDemo {
    public void print_int_while(){
        integer count = 1;
        while (count <= 25) {
            System.debug(count);
            count++;
        }
    }

    public void print_N_number(integer n){
        for (Integer i = 0; i < n; i++) {
            System.debug(i);
        }
    }

    public void print_N_odd_numbers(integer startInt, integer endInt){
        if(startInt > endInt){
            System.debug('Start number CANNOT be greater than end number. ok?');
        } else {
            for (Integer i = startInt; i < endInt; i++) {
                integer modI = math.mod(i, 2);
                if(modI == 1){
                    System.debug(i);
                }
            }
        }
    }
}
