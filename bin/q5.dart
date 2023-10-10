// import 'dart:html';

void main(List<String> arguments) {
  print(topKFrequent([2, 2, 21, 1, 1, 1, 4, 4, 4, 4, 2, 1, 1], 2));
}

List<int> topKFrequent(List<int> nums, int k) {
  Map map = {};
  for (var element in nums) {
    if (map.containsKey(element)) {
      map[element] += 1;
    } else {
      map[element] = 1;
    }
  }
  print(map);
  var result = map.keys.toList()
    ..sort(
      (a, b) => map[a]!.compareTo(map[b]!),
    );
  // print(result.reversed);
  return result.sublist(result.length - k).cast();
}
