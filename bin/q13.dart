import 'dart:math';

void main() {
  var prices = [7, 6, 4, 3, 7];

  print(maxProfit(prices));
}

int maxProfit(List<int> prices) {
  int left = 0;
  int right = 1;

  int maxdif = 0;

  while (right < prices.length) {
    maxdif = max(prices[right] - prices[left], maxdif);
    if (prices[left] < prices[right]) {
      right++;
    } else {
      left = right;
      right++;
    }
  }
  return maxdif > 0 ? maxdif : 0;
}
