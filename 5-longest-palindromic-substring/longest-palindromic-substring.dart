class Solution {
  String longestPalindrome(String s) {
    if (s.length < 2) return s;

    int start = 0;
    int maxLen = 1;

    for (int i = 0; i < s.length; i++) {
      // Tek karakter merkezli palindrom (örneğin: aba)
      int len1 = expandFromCenter(s, i, i);

      // İki karakter merkezli palindrom (örneğin: abba)
      int len2 = expandFromCenter(s, i, i + 1);

      int len = len1 > len2 ? len1 : len2;

      if (len > maxLen) {
        start = i - (len - 1) ~/ 2;
        maxLen = len;
      }
    }

    return s.substring(start, start + maxLen);
  }

  int expandFromCenter(String s, int left, int right) {
    while (left >= 0 && right < s.length && s[left] == s[right]) {
      left--;
      right++;
    }
    return right - left - 1;
  }
}
