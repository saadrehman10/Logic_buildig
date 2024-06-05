import 'dart:io';

void main() {
  // Q.1: Create two integer variables length and breadth and assign values then
  // check if they are square values or rectangle values.
  // ie: if both values are equal then it's square otherwise rectangle.

  int width = 13, height = 39;
  width == height ? print('Its a square') : print('its a rectangel');

  // Q.2: Take two variables and store age then using if/else condition to determine
  // oldest and youngest among them.

  int personOneAge = 15, personTwoAge = 15;
  personOneAge == personTwoAge
      ? print('Both children are of same age')
      : personOneAge > personTwoAge
          ? print('Child one is older than Child two')
          : print('Child two is older than Child one');

  // Q.3: A student will not be allowed to sit in exam if his/her attendance is less
  // than 75%. Create integer variables and assign value:
  // Number of classes held = 16,
  // Number of classes attended = 10,
  // and print percentage of class attended.
  // Is student is allowed to sit in exam or not?

  int classesHeld = 16, classesAttended = 10;
  double attendanceInPercentage = (classesAttended / classesHeld) * 100;
  attendanceInPercentage > 75.0
      ? print(
          'Student attandance percentage is $attendanceInPercentage % ,so student is allowed to sit in exam ')
      : print(
          'Student attandance percentage is $attendanceInPercentage % ,so student is Not allowed to sit in exam ');

  // Q4: Write a program to convert Celsius to Fahrenheit .
  // i.e: Temperature in degrees Fahrenheit (°F) = (Temperature in degrees Celsius
  // (°C) * 9/5) + 32

  double tempInCelsius = 35.0;
  print('temp in Fahrenheit ${(tempInCelsius * (9 / 5)) + 32} °F');

  // Write a program to read temperature in centigrade and display a suitable
  // message according to temperature:
  // You have num variable temperature = 42;
  // Now print the message according to temperature:
  // temp < 0 then Freezing weather
  // temp 0-10 then Very Cold weather
  // temp 10-20 then Cold weather
  // temp 20-30 then Normal in Temp
  // temp 30-40 then Its Hot
  // temp >=40 then Its Very Hot

  double temp = 20;
  switch (temp) {
    case < 0:
      print('Freezing weather');
      break;
    case <= 10 && >= 0:
      print('Very Cold weather');
      break;
    case <= 20 && >= 10:
      print('Cold weather');
      break;
    case <= 30 && >= 21:
      print('Normal weather');
      break;
    case <= 40 && >= 31:
      print('Hot weather');
      break;
    case > 40:
      print('Very Hot weather');
      break;
    default:
      print('Error');
  }

  // Q.6: Write a program to check whether an alphabet is a vowel or consonant.

  String letter = 'a';
  List<String> vowel = 'aeiou'.split('');
  vowel.contains(letter) ? print('its a vowel') : print('not a vowel');

  // Q7: Write a program to calculate root of any number.
  // i.e: √y = y1⁄2

  double y = 16;
  double x = y.abs();
  double root;
  while (true) {
    root = 0.5 * (x + (y / x));
    if ((root - x).abs() < 0.0001) {
      break;
    }
    x = root;
  }
  print(root);

  // Q8: Create a marksheet using operators of at least 5 subjects and output
  // should have Student Name, Student Roll Number, Class, Percentage, Grade
  // Obtained etc.
  // i.e: Percentage should be rounded upto 2 decimal places only.
  Map<String, int> marks = {
    'English': 100,
    'Urdu': 33,
    'Science': 43,
    'Maths': 34,
    'Sports': 66,
  };

  String subjectMarks = '';
  marks.forEach((subject, value) {
    subjectMarks += '\t$subject  :  $value\n';
  });

  String? studentName = 'Saad', gradeObtained;
  int classs = 5, studentRoll = 19923, totalMarksForEachSubject = 100;
  String percentage = (((marks.values.reduce((a, b) => a + b)) /
              marks.length *
              totalMarksForEachSubject) /
          100)
      .toStringAsFixed(2);

  switch (double.parse(percentage)) {
    case >= 90:
      gradeObtained = 'A+';
      break;
    case >= 80:
      gradeObtained = 'A';
      break;
    case >= 70:
      gradeObtained = 'B';
      break;
    case >= 60:
      gradeObtained = 'C';
      break;
    case >= 50:
      gradeObtained = 'D';
      break;
    default:
      gradeObtained = 'F';
      break;
  }

  print("""
       M A R K S H E E T 
    
    Student Name : $studentName
    Roll number  : $studentRoll
    Class        : $classs

      Subjects : Marks
$subjectMarks
    
    Percentage : $percentage 
    Grade Obtained : $gradeObtained
    """);

  // Q9: Check if the number is even or odd, If number is even then check if this is
  // divisible by 5 or not & if number is odd then check if this is divisible by 7 or not.
  int number = 5;
  number % 2 == 0
      ? number % 5 == 0
          ? print('the number is even and divisible by 5')
          : print('the number is even and number isn\'t divisible by 5')
      : number % 7 == 0
          ? print('the number is odd and divisible by 7')
          : print('the number is odd and number isn\'t divisible by 7');

  // Q10: Write a program that takes three numbers from the user and prints the
  // greatest number & lowest number.
  print('Enter the first number :');
  num userInput0 = num.parse(stdin.readLineSync()!);
  print('Enter the second number :');
  num userInput1 = num.parse(stdin.readLineSync()!);
  print('Enter the third number :');
  num userInput2 = num.parse(stdin.readLineSync()!);

  userInput0 > userInput1 && userInput0 > userInput2
      ? print('Number one is the biggest $userInput0')
      : userInput1 > userInput2 && userInput1 > userInput0
          ? print('Number second is the biggest $userInput1')
          : userInput2 > userInput0 && userInput2 > userInput1
              ? print('Number Third is the biggest $userInput2')
              : null;
}
