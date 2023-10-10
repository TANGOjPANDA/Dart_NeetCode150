void main(List<String> arguments) {
  var board = [
    ["5", "3", ".", ".", "7", ".", ".", ".", "."],
    ["6", ".", ".", "1", "9", "5", ".", ".", "."],
    [".", "9", "8", ".", ".", ".", ".", "6", "."],
    ["8", ".", ".", ".", "6", ".", ".", ".", "3"],
    ["4", ".", ".", "8", ".", "3", ".", ".", "1"],
    ["7", ".", ".", ".", "2", ".", ".", ".", "6"],
    [".", "6", ".", ".", ".", ".", "2", "8", "."],
    [".", ".", ".", "4", "1", "9", ".", ".", "5"],
    [".", ".", ".", ".", "8", ".", ".", "7", "9"]
  ];
  print(isValidSudoku(board));
}

bool isValidSudoku(List<List<String>> board) {
  List<List<String>> board2 = List.generate(9, (_) => []);
//split into horizontal lines
  for (int i = 0; i < board.length; i++) {
    var element = board[i];
    if (!checkValid(element)) {
      return false;
    }
    for (int ii = 0; ii < board.length; ii++) {
      // board2.
      board2[ii].add(element[ii]);
    }
  }
//split into vertical lines
  for (int i = 0; i < board2.length; i++) {
    var element = board2[i];
    if (!checkValid(element)) {
      return false;
    }
  }
//split into 3x3
  List<List<String>> board3 = [];
  for (int i = 0; i < 9; i += 3) {
    board3.addAll([
      board[i].sublist(0, 3) +
          board[i + 1].sublist(0, 3) +
          board[i + 2].sublist(0, 3)
    ]);
    board3.addAll([
      board[i].sublist(3, 6) +
          board[i + 1].sublist(3, 6) +
          board[i + 2].sublist(3, 6)
    ]);
    board3.addAll([
      board[i].sublist(6, 9) +
          board[i + 1].sublist(6, 9) +
          board[i + 2].sublist(6, 9)
    ]);
  }
  // print(board3);
  for (int i = 0; i < board3.length; i++) {
    var element = board3[i];
    if (!checkValid(element)) {
      return false;
    }
  }
  return true;
}

bool checkValid(List<String> line) {
  Map map = {};

  for (var element in line) {
    if (map.containsKey(element)) {
      map[element] += 1;
      if (element != '.') {
        return false;
      }
    } else {
      map[element] = 1;
    }
  }
  print(map);
  return true;
}
