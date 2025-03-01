String expandString(String input) {
  RegExp regExp = RegExp(r'([a-zA-Z])(\d+)');
  Iterable<Match> matches = regExp.allMatches(input);
  StringBuffer output = StringBuffer();

  for (final match in matches) {
    String letter = match.group(1)!;
    int count = int.parse(match.group(2)!);
    output.write(List.filled(count, letter).join(''));
  }

  return output.toString();
}

void main() {
  String input1 = "a1b10";
  print("Input: $input1");
  print("Output: ${expandString(input1)}"); 

  String input2 = "b3c6d15";
  print("\nInput: $input2");
  print("Output: ${expandString(input2)}"); 
}
