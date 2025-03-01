bool isSubsetSum(List<int> arr, int targetSum) {
  int n = arr.length;
  
  List<List<bool>> dp = List.generate(
    n + 1,
    (_) => List.filled(targetSum + 1, false),
  );

  for (int i = 0; i <= n; i++) {
    dp[i][0] = true;
  }

  for (int i = 1; i <= n; i++) {
    for (int j = 1; j <= targetSum; j++) {
      if (arr[i - 1] <= j) {
        dp[i][j] = dp[i - 1][j] || dp[i - 1][j - arr[i - 1]];
      } else {
        dp[i][j] = dp[i - 1][j];
      }
    }
  }

  return dp[n][targetSum];
}

void main() {
  List<int> arr = [3, 34, 4, 12, 5, 2];

  int targetSum1 = 9;
  print("Array: $arr");
  print("Target Sum: $targetSum1");
  print("Subset exists: ${isSubsetSum(arr, targetSum1)}"); 

  int targetSum2 = 30;
  print("\nArray: $arr");
  print("Target Sum: $targetSum2");
  print("Subset exists: ${isSubsetSum(arr, targetSum2)}"); 
}
