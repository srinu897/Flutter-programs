List<List<int>> permuteUnique(List<int> nums) {
  List<List<int>> result = [];
  nums.sort();
  List<bool> used = List.filled(nums.length, false);
  List<int> current = [];

  void backtrack() {
    if (current.length == nums.length) {
      result.add(List.from(current));
      return;
    }
    for (int i = 0; i < nums.length; i++) {
      if (used[i]) continue;
      if (i > 0 && nums[i] == nums[i - 1] && !used[i - 1]) continue;
      
      used[i] = true;
      current.add(nums[i]);
      backtrack();
      current.removeLast();
      used[i] = false;
    }
  }

  backtrack();
  return result;
}

void main() {
  List<int> nums = [1, 1, 2];
  List<List<int>> uniquePermutations = permuteUnique(nums);
  print("Unique permutations for $nums:");
  for (var perm in uniquePermutations) {
    print(perm);
  }
}
