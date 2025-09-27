class Solution {
  int myAtoi(String s) {
    s = s.trim();
    int sign = 1, i = 0;
    int maxInt = 2147483647;
    int minInt = -2147483648;
    int n = s.length;
    int res = 0;

    if (n == 0){
        return 0;
    }
    if (s[0] == '-') {
      sign = -1;
      i++;
    } else if (s[0] == '+') {
      i++;
    }
    while (i < n) {
      var ch = s[i];
      if (ch.codeUnitAt(0) < '0'.codeUnitAt(0) || ch.codeUnitAt(0) > '9'.codeUnitAt(0)) break;

      int digit = ch.codeUnitAt(0) - '0'.codeUnitAt(0);

      if (sign == 1 && res > (maxInt - digit) ~/ 10) return maxInt;
      if (sign == -1 && -res < (minInt + digit) ~/ 10) return minInt;

      res = res * 10 + digit;
      i++;
    }

    return sign * res;
  }
}