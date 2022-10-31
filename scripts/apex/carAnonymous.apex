Car audi = new car();
audi.carColor = 'black';
system.debug('audi => ' + audi);
audi.switchOn();

Car vw = new car();
vw.carColor = 'white';
vw.carName = 'polo';
system.debug(vw);
vw.drive();
vw.driveAtMaxSpeed();