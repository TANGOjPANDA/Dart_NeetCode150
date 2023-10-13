import 'dart:ffi';
import 'dart:math';

void main() {
  var s = "([)]";
  // var k = 1;

  print(isValid(s));
}

bool isValid(String s) {
  List<String> tmp = [];
  if (s.length % 2 == 1 || s.isEmpty) {
    return false;
  }
  for (var i = 0; i < s.length; i++) {
    if (s[i].contains('{') || s[i].contains('(') || s[i].contains('[')) {
      //if opening add to list
      tmp.add(s[i]);
    } else if (tmp.isNotEmpty) {
      switch (s[i]) {
        case '}':
          if (tmp.last == '{') {
            tmp.removeLast();
          } else {
            return false;
          }
          break;
        case ']':
          if (tmp.last == '[') {
            tmp.removeLast();
          } else {
            return false;
          }
          break;
        case ')':
          if (tmp.last == '(') {
            tmp.removeLast();
          } else {
            return false;
          }
          break;
        default:
          return false;
      }
    } else {
      return false;
    }
  }

  return tmp.isEmpty ? true : false;
}
