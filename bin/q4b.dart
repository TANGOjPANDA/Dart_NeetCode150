void main(List<String> arguments) {
  var strs = ["eat", "tea", "tan", "ate", "nat", "bat"];
  print(groupAnagrams(strs));
}

List<List<String>> groupAnagrams(List<String> strs) {
  final Map<String, List<String>> anagramGroups = {};

  for (final word in strs) {
    final sortedWord = String.fromCharCodes(word.runes.toList()..sort());
    anagramGroups.putIfAbsent(sortedWord, () => []).add(word);
  }

  return anagramGroups.values.toList();
}
