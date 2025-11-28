class Solution {
  List<String> letterCombinations(String digits) {
    if (digits.isEmpty) return [];

    final map = {
      '2': 'abc',
      '3': 'def',
      '4': 'ghi',
      '5': 'jkl',
      '6': 'mno',
      '7': 'pqrs',
      '8': 'tuv',
      '9': 'wxyz',
    };

    return digits.split('').fold(<String>[''], (prev, digit) {
      return prev
          .expand((p) => map[digit]!
              .split('')
              .map((ch) => p + ch))
          .toList();
    });
  }
}
