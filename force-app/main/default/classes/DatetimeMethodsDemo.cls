public class DatetimeMethodsDemo {
    public void calculateAgeInMonths(){
        //today date
        date todayDate = date.today();
        //birtdate
        date birthdate = date.newInstance(1982, 04, 24);

        integer ageInMonths = birthdate.monthsBetween(todayDate);
        system.debug('Siriporn age in months is.. ' + ageInMonths);

    }

    public void calculateAgeInDays(){
        //today date
        date todayDate = date.today();
        //birtdate
        date birthdate = date.newInstance(1982, 04, 24);

        integer ageInDays = birthdate.daysBetween(todayDate);
        system.debug('Siriporn age in days is.. ' + ageInDays);

    }
public void printSubscriptionEndDate(){
    //today date = subs start date
    date subscriptionStartDate = date.today();

    date subscriptionEndDate = subscriptionStartDate.addDays(1000);//parameter is integer
    System.debug('subscription will end on ' + subscriptionEndDate);

    integer yearEndDate = subscriptionEndDate.year();
    integer monthEndDate = subscriptionEndDate.month();
    System.debug('Year and month of End Date is ' + yearEndDate + ', ' + monthEndDate);
}
    public void printOfferEndDateTime(){ 
        datetime offerStartDt = datetime.now();

        datetime offerEndDT = offerStartDt.addHours(51);
        System.debug('Offer ends datetime '  + offerEndDT);

        date offerEndDate = offerEndDT.date();
        System.debug('Offer end date is ' + offerEndDate);
    }
}