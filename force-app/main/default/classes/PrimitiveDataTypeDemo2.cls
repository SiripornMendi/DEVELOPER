public class PrimitiveDataTypeDemo2 {
    public void printNewDate(){
        System.debug('Create new date instance');

        date newDate = Date.newInstance(1997, 8, 18);
        System.debug('New date is ' + newDate);

        date newDate2 = Date.newInstance(2022, 2, 22);
        System.debug('New date 2 is ' + newDate2);

        date todayDate = date.today();
        System.debug('today\'s date is : ' + todayDate);
    }

    public void printNewTime(){
        time myTime = time.newInstance(18, 25, 15, 52);
        System.debug(myTime);

        time myTime2 = time.newInstance(5, 15, 35, 5);
        System.debug(myTime2);
    }

    public void printNewDateTime(){
        date todayDate = date.today();
        time mytime = time.newInstance(18, 25, 15, 52);

        //New datetime from Date and Time
        Datetime dt1 = datetime.newInstance(todayDate, mytime);
        System.debug('dt1 is ---> ' + dt1);

        //Datetime using YEAR, MONTH, DAY 
        datetime dt2 = datetime.newInstance(2025, 9, 14);//this is Midnight for pacific time (SF) user's timezone)
        System.debug('dt2 is ---> ' + dt2);//it print in GMT

        //datetime wity YEAR, MONTH, DAY, HOUR, MINUTE, SECOND
        datetime dt3 = datetime.newInstance(2022, 5, 15, 17, 45, 16);//it will create pacific timeß
        System.debug('dt3 is ---> ' + dt3);// it will create pacific time. and print GMT time.

        //Long
        long longTime = 22222222222L;
        datetime dt4 = datetime.newInstance(longTime);

        long longTimeZero = 0;
        datetime dt41 = datetime.newInstance(longTimeZero);

        System.debug('dt 4 ---> ' + dt4);
        System.debug('dt 41 ---> ' + dt41);

        //GMT
        datetime dt5 = datetime.newInstanceGmt(2022, 5, 15, 1, 45, 6);
        System.debug('dt5 ---> ' + dt5);

        //Now
        datetime dt6 = datetime.now();
        System.debug('dt6 ---> ' + dt6);
        datetime dt7 = System.now();
        System.debug('dt7 ---> ' + dt7);

    }
}