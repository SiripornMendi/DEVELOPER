public class Car { // class is similar to custom object
    //class body. Inside of the class
    public string carColor = '';
    public string carName = '';

    integer maxSpeedKmPerHr = 150;

    public void switchOn(){
        system.debug('starting the car NOW');
    }
    public void drive(){
        switchOn();
        System.debug('driving..... ' + carName);
    }
    public void driveAtMaxSpeed(){
        drive();
        string description = 'Driving ' + carName + ' at max speed of ' + maxSpeedKmPerHr + 'km/hr';
        System.debug(description);
    }

}