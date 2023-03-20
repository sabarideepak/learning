import 'dart:io';

void main() {
  print('please enter your value:');
  String? age = stdin.readLineSync();
  double value = double.parse(age.toString());
  print('enter your number${value}');

  if (value >= 8.5 && value <= 10) {
    print('room number is 1');
  } else if (value >= 7.6 && value <= 8.4) {
    print('room number is 2');
  } else if (value >= 6 && value <= 7.5) {
    print('room number is 3');
  } else if (value < 6) {
    print('value less than 6 Better luck next time');
  } else if (value > 10) {
    print('value more than 10 Better luck next time');
  }
}
