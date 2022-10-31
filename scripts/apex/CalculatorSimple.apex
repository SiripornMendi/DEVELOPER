integer x = CalculatorSimple.add(5, 55);
system.debug(x);

system.debug('77+4+65 ==> ' +CalculatorSimple.add(77, 4, 65));

List<integer> l1 = new List<integer>();
l1.add(99);
l1.add(15);
l1.add(20);
integer l1Sum = CalculatorSimple.add(l1);
system.debug('Sum of l1Sum ==> ' + l1Sum);