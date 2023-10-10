import 'dart:math';

void main() {
  var s = " ";
  // print(s[1]);
  print(lengthOfLongestSubstring(s));
}

int lengthOfLongestSubstring(String s) {
  int count = 0;
  int left = 0;
  int right = 0;
  Set letter = {};
  int maxCount = 0;

  while (right < s.length) {
    if (letter.contains(s[right])) {
      left++;
      right = left;
      count = 0;
      letter.clear();
    } else {
      letter.add(s[right]);

      right++;
      count++;
    }
    maxCount = max(count, maxCount);
  }

  return maxCount;
}
