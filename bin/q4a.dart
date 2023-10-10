import 'dart:io';
import 'package:console/console.dart' as console;

void main(List<String> arguments) {
  var strs = ["eat", "tea", "tan", "ate", "nat", "bat"];
  print(groupAnagrams(strs));
}

List<List<String>> groupAnagrams(List<String> strs) {
  List<List<String>> result = [];
  List<int> tracker = [];
  for (var count = 0; count < strs.length; count++) {
    String i = strs[count];
    if (!tracker.contains(count)) {
      var tmp = [i];
      tracker.add(count);

      for (var count2 = count; count2 < strs.length; count2++) {
        String j = strs[count2];
        if (!tracker.contains(count2)) {
          // print([i, j]);
          if (isAnagram(i, j)) {
            tmp.add(j);
            tracker.add(count2);
          }
        }
      }
      result.add(tmp);
    }
  }
  return result;
}

List<int> findAllIndices(List<int> list, int valueToFind) {
  List<int> indices = [];
  for (int i = 0; i < list.length; i++) {
    if (list[i] == valueToFind) {
      indices.add(i);
    }
  }
  return indices;
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
