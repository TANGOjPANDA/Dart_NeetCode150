void main() {
  MinStack minStack = new MinStack();
  minStack.push(-2);
  minStack.push(0);
  minStack.push(-3);
  print(minStack.getMin()); // return -3
  minStack.pop();
  print(minStack.top()); // return 0
  print(minStack.getMin()); // return -2
}

class MinStack {
  List<int> stack = [];
  List<int> minstack = [];
  MinStack();

  void push(int val) {
    stack.add(val);
    minstack.add(minstack.isNotEmpty
        ? (val < minstack.last ? val : minstack.last)
        : val);
  }

  void pop() {
    minstack.removeLast();
    stack.removeLast();
  }

  int top() {
    return stack.last;
  }

  int getMin() {
    return minstack.last;
  }
}
