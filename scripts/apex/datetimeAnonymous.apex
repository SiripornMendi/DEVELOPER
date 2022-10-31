DatetimeMethodsDemo dm = new DatetimeMethodsDemo();
// dm.calculateAgeInMonths();
// dm.calculateAgeInDays();
// dm.printSubscriptionEndDate();
dm.printOfferEndDateTime();

datetime birthdate = datetime.newInstance(1982, 04, 24, 7, 22, 00);
long longbirthdate = birthdate.getTime();
System.debug('Long birth date = ' + longbirthdate);