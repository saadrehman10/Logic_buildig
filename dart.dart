import 'dart:io';

String ReverseString(String value) {
  List<String> temp = [];
  List<String> output = [];
  String tempStr = '';

  for (int i = 0; i < value.length; i++) {
    temp.add(value[i]);
  }
  for (int i = temp.length - 1; i >= 0; i--) {
    output.add(temp[i]);
  }
  for (int i = 0; i < output.length; i++) {
    print(output[i]);
    tempStr += output[i];
  }
  return tempStr;
}

dynamic input(String type, [String? text]) {
  print(text ?? "Input something...");
  try {
    return type == 'i'
        ? int.parse(stdin.readLineSync()!)
        : stdin.readLineSync()!;
  } catch (e) {
    print('Invalid input');
  }
}

void main() {
  // int x = 11211;
  // print(
  //     x.toString().split('').reversed.join('') == x.toString() ? true : false);
  // List<String> array = x.toString().split('');
  // var temp = [1];
  // var a = temp[0];
  // switch(a) {
  //   case 0:
  //     print('hello')
  //     break;
  //   default:
  //     print('hellod');
  // }
  // print(ReverseString('value'));
  // var s = 'hello'.split('');
  // for (int i = s.length - 1; i >= 0; i--) {
  //   String output = s.removeAt(i);
  //   s.insert(0, output);
  // }
  // print(s.reversed);

  List<String> array = 'aeiou'.split('');
  for (String? value in array) {}
}
