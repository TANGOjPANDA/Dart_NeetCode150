void main() {
  var s = "A man, a plan, a canal: Panama";
  print(isPalindrome(s));
}

bool isPalindrome(String s) {
  s = s.toLowerCase().replaceAll(RegExp(r'[^a-z0-9]'), '');
  if (s.isEmpty) {
    return true;
  }
  String s1 = s.substring(0, ((s.length + 1) / 2).floor());
  String s2 =
      s.split('').reversed.join('').substring(0, ((s.length + 1) / 2).floor());
  print((s1, s2));
  return s1 == s2;
}
