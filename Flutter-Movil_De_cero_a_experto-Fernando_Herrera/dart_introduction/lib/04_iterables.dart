void iterables(){

  final numbers = [1,2,3,4,4,5,6,6,7,8];

  print(numbers);
  print(numbers.first);   //have to validate if exist.
  print(numbers.last);    //have to validate if exist.
  print(numbers.reversed);

  final reversedNumbers = numbers.reversed;   //is an iterable, if starts with "(" is an iterable.

  print(reversedNumbers);

  //to recover the list

  print(reversedNumbers.toList());
  //To Set
  print(reversedNumbers.toSet());

  //filter
  final numbersGreaterThan5 = numbers.where((element) => element > 5);

  print(numbersGreaterThan5);

  //to get an element from iterable must be with .elementAt()

}