import 'package:console/console.dart' as console;

void main(List<String> arguments) {
  print('Hello world: ${console.calculate()}!');
  bool? containsDuplicate(List<int> nums) {
    var map = Map();

    nums.forEach((element) {
      if (map.containsKey(element)) {
        map[element] += 1;
      } else {
        map[element] = 1;
      }
    });
    print(map.entries);
    for (var i in map.entries) {
      if (i.value > 1) {
        return true;
      } else {
        return false;
      }
    }
  }

  print(containsDuplicate([1, 1, 3, 4]));
}

class Solution {
  bool containsDuplicate(List<int> nums) {
    var map = Map();

    nums.forEach((element) {
      if (map.containsKey(element)) {
        map[element] += 1;
      } else {
        map[element] = 1;
      }
    });
    // print(map.entries);
    for (var i in map.entries) {
      if (i.value > 1) {
        return true;
      } else {
        return false;
      }
    }
    return false;
  }
}
