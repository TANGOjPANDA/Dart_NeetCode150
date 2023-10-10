// import 'dart:svg';

import 'dart:io';

import 'package:console/console.dart' as console;
// import 'package:collection/collection.dart';

// import 'package:collection/equality.dart';
// import 'package:flutter/foundation.dart';
void main(List<String> arguments) {
  print(twoSum([1, 2, 3, 4], 6));
}

List<int> twoSum(List<int> nums, int target) {
  var result = <int>[];
  nums.forEach((i) {
    nums.forEach((j) {
      if (i + j == target) {
        var tmp = findAllIndices(nums, i);
        var tmp2 = findAllIndices(nums, j);
        tmp.forEach((element1) {
          tmp2.forEach((element2) {
            if (element1 != element2) {
              result = [element2, element1];
            }
          });
        });
      }
    });
  });

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
