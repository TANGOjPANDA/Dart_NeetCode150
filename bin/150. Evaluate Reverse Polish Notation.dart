import 'package:test/test.dart';

void main() {
  var tokens = [
    "10",
    "6",
    "9",
    "3",
    "+",
    "-11",
    "*",
    "/",
    "*",
    "17",
    "+",
    "5",
    "+"
  ];
  print(evalRPN(tokens));
}

int evalRPN(List<String> tokens) {
  int tot = 0;
  List<String> s = [];
  List<int> nums = [];
  final digitCheckk = RegExp(r'(\d+)');

  for (int i = 0; i < tokens.length; i++) {
    var element = tokens[i];
    // print(element);
    if (digitCheckk.hasMatch(element)) {
      nums.add(int.parse(element));
    } else {
      switch (element) {
        case '+':
          nums.add(nums[nums.length - 2] + nums[nums.length - 1]);
          nums.removeAt(nums.length - 2);
          nums.removeAt(nums.length - 2);
          break;
        case '*':
          nums.add(nums[nums.length - 2] * nums[nums.length - 1]);
          nums.removeAt(nums.length - 2);
          nums.removeAt(nums.length - 2);
          break;
        case '/':
          nums.add((nums[nums.length - 2] / nums[nums.length - 1]).toInt());
          nums.removeAt(nums.length - 2);
          nums.removeAt(nums.length - 2);
          break;
        case '-':
          nums.add(nums[nums.length - 2] - nums[nums.length - 1]);
          nums.removeAt(nums.length - 2);
          nums.removeAt(nums.length - 2);
          break;
        default:
      }
    }
  }
  return nums[0];
}
