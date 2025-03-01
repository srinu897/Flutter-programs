import 'dart:math';

int longestSubarrayWithSumAtMostK(List<int> arr, int K) {
  int left = 0, sum = 0, maxLength = 0;
  for (int right = 0; right < arr.length; right++) {
    sum += arr[right];
    while (sum > K && left <= right) {
      sum -= arr[left];
      left++;
    }
    maxLength = max(maxLength, right - left + 1);
  }
  return maxLength;
}

void main() {
  List<int> arr = [3, 1, 2, 1, 4];
  int K = 7;
  print("Array: $arr");
  print("K: $K");
  int length = longestSubarrayWithSumAtMostK(arr, K);
  print("Longest subarray length with sum <= K: $length");
}
