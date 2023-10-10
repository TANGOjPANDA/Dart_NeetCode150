import 'dart:math';

void main() {
  var s = "AABABBA";
  var k = 1;

  // print(s[1]);
  print(characterReplacement(s, k));
}

int characterReplacement(String s, int k) {
  //k is the nmber of grace periods they can have
  int count = 0;
  int left = 1;
  int right = 1;
  Map letter = {};
  int maxCount = 0;
  if (s.length < 2) {
    return s.length;
  }
  while (right < s.length) {
    if (letter.containsKey(s[right])) {
      letter[s[right]] += 1;
    } else {
      letter[s[right]] = 1;
    }

    if ((count - (letter.values.toList()..sort()).first < k)) {
      right++;
      count++;
    } else {
      left++;
      right = left;
      count = 0;
      letter.clear();
    }
    maxCount = max(count, maxCount);
  }

  return maxCount;
}
