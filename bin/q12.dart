import 'dart:math';

void main() {
  var numbers = [0, 1, 0, 2, 1, 0, 1, 3, 2, 1, 2, 1];

  print(trap(numbers));
}

int trap(List<int> height) {
  if (height.length < 3) {
    return 0;
  }
  int water = 0;
  int waterLevel = 0;
  int left = 0;
  int right = height.length - 1;

  while (left < right) {
    waterLevel = max(min(height[left], height[right]), waterLevel);
    water += waterLevel - height[left] >= 0 ? waterLevel - height[left] : 0;
    water += waterLevel - height[right] >= 0 ? waterLevel - height[right] : 0;

    if (height[left] <= height[right]) {
      left++;
    } else {
      right--;
    }
  }

  return water;
}
