import 'dart:io';

void main() {
// (1)What are the various types of operators in dart? Explain with Examples.
//  Arithmetic Operators:
  print(1 + 1); // add
  print(1 - 1); // subtract
  print(1 * 3); // multiply
  print(10 / 5); // divide
  print(10 % 7); // remainder
// Relational Operators
  print(1 < 2); // 1 is less than 2
  print(1 > 2); // 1 is greater than 2
  print(1 <= 2); // 1 is less than or equals to 2
  print(1 >= 2); // 1 is greater than or equals to 2
  print(1 == 2); // 1 is equals to 2
  print(1 != 2); // 1 is not equals to 2
// Type Test Operators:
  var check = 'Muhammad Bilal';
  print(check is! int); // name is not a number
  print(check is int); // name is a number
// Assignment Operators:
  var a;
  a = a ?? 1; // if d = null than d = 1 esle d = d
  print(a);
// Logical Operators:
  print(2 > 1 && 1 > 2); // 2 is greater than 1 and 1 is greater than 2
  print(2 > 1 || 1 > 2); // 2 is greater than 1 or 1 is greater than 2
  print(!(2 > 1 && 1 > 2)); // not (2 is greater than 1 and 1 is greater than 2)
// Conditional Operators:
  var b = 1;
  var c = 1;
  b == c
      ? print('same')
      : print('not same'); // if b = c than print(same) else print(not same)
// (2)Cost of one movie ticket is 600 PKR. Write a script to store ticket price in a variable & calculate the cost of buying 5 tickets to a movie.
  print('Ticket price is 600. How many tickets would you like to buy? ');
  var ticketQuantity = stdin.readLineSync();
  var totalAmmount = 600 * int.parse(ticketQuantity!);
  print('Your total ammount is $totalAmmount');

// (3) How to get difference of lists in Dart? Problem: Consider you have two lists [1,2,3,4,5,6,7] and [3,5,6,7,9,10]. How would you get the difference as output? E.g. [1, 2, 4].
  List<int> firstList = [1, 2, 3, 4, 5, 6, 7];
  List<int> secondList = [3, 5, 6, 7, 9, 10];
  List<int> output = [];

  for (var fI = 0; fI < firstList.length; fI++) {
    for (var sI = 0; sI < secondList.length; sI++) {
      if (secondList[sI] == firstList[fI]) {
        break;
      } else if (sI + 1 == secondList.length &&
          secondList[sI] != firstList[fI]) {
        output.add(firstList[fI]);
      }
    }
  }
  print(output);

// (4)What is a difference between these operators “?? And?”
  var d;
  var e = d ?? 'e'; // if d = null than e = e else e = d
  var f = e ?? 'f'; // if e = null than f = f else f = e
  var g =
      e == f ? 'same' : 'not same'; // if e = f than g = same else g = not same
  print(e);
  print(g);

// (5)What are the data types supported in Dart? Explain with Examples.
  int number = 12;
  double numberWDot = 1.2;
  num bothNumber = 123.4;
  String name = 'Muhammad Bilal';
  bool isLoading = true;
  List data = ['Bilal', 786];
  Map map = {'name': name};
  print(number);
  print(numberWDot);
  print(bothNumber);
  print(name);
  print(isLoading);
  print(data);
  print(map);

// (6)Solve: a. First declare an array and assign the numbers of the table of 7. b. Second declare another array and assign the numbers 1-10 c. Now write down the table of 7 using map.fromiterables method.
  List<int> h = [7, 14, 21, 28, 35, 42, 49, 56, 63, 70];
  List<int> i = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  var j = Map<String, int>.fromIterable(i,
      key: (k) => '7 x $k', value: (v) => h[v - 1]);
  print(j);

// (7) Write a program that a. Store correct password in a JS variable. b. Asks user to enter his/her password c. Validate the two passwords: d. Check if user has entered password. If not, then give message “Please enter your password” e. Check if both passwords are same. If they are same, show message “Correct! The password you f. enteredmatchestheoriginalpassword”.Show“Incorrectpassword” otherwise.
  var originalPassword = '123456';
  print('Enter Password :');
  var Password = stdin.readLineSync();
  if (Password != '') {
    if (Password == originalPassword) {
      print('Correct! The password you entered matches the original password');
    } else {
      print('Incorrect password');
    }
  } else {
    print('Please enter your password');
  }

// (8) Write a program to store 3 student names in an array. Take another array to store score of these three students. Assume that total marks are 500 for each student, display the scores & percentages sof students.
  print('student 1 name :');
  var student1Name = stdin.readLineSync();
  print('student 1 score :');
  var student1Score = stdin.readLineSync();
  print('student 2 name :');
  var student2Name = stdin.readLineSync();
  print('student 2 score :');
  var student2Score = stdin.readLineSync();
  print('student 3 name :');
  var student3Name = stdin.readLineSync();
  print('student 3 score :');
  var student3Score = stdin.readLineSync();
  List allStudentsName = [student1Name, student2Name, student3Name];
  List allStudentsScore = [
    int.parse(student1Score!),
    int.parse(student2Score!),
    int.parse(student3Score!)
  ];
  for (var i = 0; i < allStudentsName.length; i++) {
    print(
        'Name: ${allStudentsName[i]} Score: ${allStudentsScore[i]} Percentage: ${(allStudentsScore[i] / 500) * 100}');
  }

// (9) Declare 5 legal & 5 illegal variable names.
var k='legal';
var bilal='legal';
var l1='legal';
var m_bilal='legal';
var bilal$='legal';
// var 1bilal='illegal';
// var muhammd bilal='illegal';
// var muhammad-bilal='illegal';
// var (bilal)='illegal';
// var @bilal='illegal';

// (10) Write a program to replace the “Hyder” to “Islam” in the word “Hyderabad” and display the result.
  var word = 'Hyderabad';
  var replacedWord = word.replaceAll('Hyder', 'Islam');
  print(replacedWord);

// (11) Write a program to generate your K-Electric bill 7. All the amounts should be rounded off to 2 decimal places. Display the following fields: a. Customer Name b. Current Month c. Number of units d. Charges per unit e. Net Amount Payable (within Due Date) f. LatePaymentSurcharge g. Gross Amount Payable (after Due Date)  Where, Net Amount Payable (within Due Date) = Number of units * Charges per unit & Gross Amount Payable (after Due Date) = Net Amount + Late Payment Surcharge
//  OR
// (12) Write a program that shows the message “First fifteen days of the month” if the date is less than 16th of the month else shows “Last days of the month”.
  var date = DateTime.now();
  date.day < 16
      ? print('First fifteen days of the month')
      : print('Last days of the month');

// (13) Find 5 new methods of List and String.
  List list = [1, "a", 2, "b", 3, "c", 4, "d"];
  var list1 = list.whereType<int>();
  var list2 = list.getRange(3, 6);
  var list3 = list.contains('d');
  var list4 = list.take(3);
  var list5 = list.skip(3);
  String cast = ' Memon ';
  var string1 = cast.startsWith(' Memon');
  var string2 = cast.toUpperCase();
  var string3 = cast.indexOf('o');
  var string4 = cast.trim();
  var string5 = cast.padLeft(8, 'Bilal ');

  print(list1);
  print(list2);
  print(list3);
  print(list4);
  print(list5);
  print(string1);
  print(string2);
  print(string3);
  print(string4);
  print(string5);
}
