void main(List<String> arguments) {
  print(productExceptSelf([2, 2, 2, 1]));
  print(List.filled(4, 1));
}

List<int> productExceptSelf(List<int> nums) {
  int n = nums.length;

  // Initialize left and right product arrays
  List<int> leftProducts = List.filled(n, 1);
  List<int> rightProducts = List.filled(n, 1);

  // Compute left products
  int leftProduct = 1;
  for (int i = 0; i < n; i++) {
    leftProducts[i] = leftProduct;
    leftProduct *= nums[i];
  }

  // Compute right products and result
  int rightProduct = 1;
  for (int i = n - 1; i >= 0; i--) {
    rightProducts[i] = rightProduct;
    rightProduct *= nums[i];
    nums[i] = leftProducts[i] * rightProducts[i];
  }

  return nums;
}
