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

List<String> commonChars(List<String> words) {
  List<String> output = [];
  String joinedWords = words.join();
  Map<String, int> occurance = {};
  words[0].split('').forEach((index) => occurance[index] = 0);
  for (int i = 0; i < joinedWords.length; i++) {
    if (occurance.keys.contains(joinedWords[i])) {
      occurance[joinedWords[i]] = occurance[joinedWords[i]]! + 1;
    }
  }
  occurance.removeWhere((key, value) => value < words.length);
  occurance.forEach((key, value) {
    if (value % words.length == 0) {
      int temp = value ~/ words.length;
      for (int i = 0; i < temp; i++) {
        output.add(key);
      }
    } else {
      output.add(key);
    }
  });
  print(occurance);
  return output;
}

void main() {
  var array2 = [
    "acabcddd",
    "bcbdbcbd",
    "baddbadb",
    "cbdddcac",
    "aacbcccd",
    "ccccddda",
    "cababaab",
    "addcaccd"
  ];
  var array1 = ["cool", "lock", "cook"];
  var array = ["bella", "label", "roller"];
  print(commonChars(array1));
}
