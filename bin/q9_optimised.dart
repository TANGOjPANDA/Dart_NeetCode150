void main() {
  var numbers = [2, 7, 11, 15];
  var target = 9;
  print(twoSum(numbers, target));
}
//already 0(n) tiome complexity

List<int> twoSum(List<int> numbers, int target) {
  // Set<int> nums = numbers.toSet();

  for (int i = 0; i < numbers.length; i++) {
    int element = numbers[i];
    if (numbers.contains(target - element)) {
      if (numbers.indexOf(element) == numbers.indexOf(target - element)) {
        return [i + 1, numbers.indexOf(target - element) + 2];
      } else {
        return [i + 1, numbers.indexOf(target - element) + 1];
      }
    }
  }
  return [];
}
