void main() {
  var numbers = [1, 2, 1];

  print(maxArea(numbers));
}

int maxArea(List<int> height) {
  int result = 0;
  int left = 0;
  int right = height.length - 1;

  while (left < right) {
    int tmp = returnPool(left, right, height[left], height[right]);
    result = result < tmp ? tmp : result;
    if (height[left] < height[right]) {
      left++;
    } else {
      right--;
    }
  }

  return result;
}

returnPool(int i, int j, int k, int l) {
  // returns the value of the biggest pool creatable

  int tmp = (i - j) * (k < l ? k : l);
  return tmp.abs();
}
