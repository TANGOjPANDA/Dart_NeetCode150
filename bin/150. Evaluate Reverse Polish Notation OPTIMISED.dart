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
  List<int> stack = [];

  for (var token in tokens) {
    if (_isDigit(token)) {
      stack.add(int.parse(token));
    } else {
      int operand2 = stack.removeLast();
      int operand1 = stack.removeLast();
      stack.add(_applyOperator(token, operand1, operand2));
    }
  }

  return stack[0];
}

bool _isDigit(String token) {
  return int.tryParse(token) != null;
}

int _applyOperator(String operator, int operand1, int operand2) {
  switch (operator) {
    case '+':
      return operand1 + operand2;
    case '-':
      return operand1 - operand2;
    case '*':
      return operand1 * operand2;
    case '/':
      return (operand1 / operand2).toInt();
    default:
      throw ArgumentError("Invalid operator: $operator");
  }
}
