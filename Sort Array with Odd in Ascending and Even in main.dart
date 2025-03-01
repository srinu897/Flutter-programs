void main() {

  List<int> arr = [3, 1, 2, 4, 5, 6, -7, 8, -2];

  List<int> odds = [];
  List<int> evens = [];

  for (int num in arr) {
    if (num % 2 != 0) {
      odds.add(num);
    } else {
      evens.add(num);
    }
  }

  odds.sort();

  evens.sort((a, b) => b.compareTo(a));

  List<int> modifiedArray = [...odds, ...evens];

  print("Modified array: $modifiedArray");
}
