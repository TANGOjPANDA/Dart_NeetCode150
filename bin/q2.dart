// import 'dart:svg';

import 'package:console/console.dart' as console;
// import 'package:collection/collection.dart';

// import 'package:collection/equality.dart';
// import 'package:flutter/foundation.dart';
void main(List<String> arguments) {
  print(isAnagram('yes', 'se'));
}

bool isAnagram(String s, String t) {
  var map1 = Map();
  var map2 = Map();
  var tmp = s.split('');
  tmp.forEach((element) {
    if (map1.containsKey(element)) {
      map1[element] += 1;
    } else {
      map1[element] = 1;
    }
  });
  t.split('').forEach((element) {
    if (map2.containsKey(element)) {
      map2[element] += 1;
    } else {
      map2[element] = 1;
    }
  });
  var sortedByValueMap1 = Map.fromEntries(
      map1.entries.toList()..sort((e1, e2) => e1.key.compareTo(e2.key)));
  var sortedByValueMap2 = Map.fromEntries(
      map2.entries.toList()..sort((e1, e2) => e1.key.compareTo(e2.key)));
  // print(sortedByValueMap1);
  // print(sortedByValueMap2);
  if (equalMap(sortedByValueMap1, sortedByValueMap2)) {
    return true;
  }
  return false;
}

bool equalMap(Map sortedByValueMap1, Map sortedByValueMap2) {
  if (sortedByValueMap1.length != sortedByValueMap2.length) {
    return false;
  }

  for (var i = 0; i < sortedByValueMap1.length; i++) {
    if (sortedByValueMap1.keys.toList()[i] !=
        sortedByValueMap2.keys.toList()[i]) {
      return false;
    }
    if (sortedByValueMap1.values.toList()[i] !=
        sortedByValueMap2.values.toList()[i]) {
      return false;
    }
    // print(sortedByValueMap1.keys.toList()[i]);
    // print(sortedByValueMap1.values.toList()[i]);
  }

  return true;
}
