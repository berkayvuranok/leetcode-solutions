class Solution {
  int lengthOfLongestSubstring(String s) {
    int left = 0;
    int maxLength = 0;
    Map<String, int> seenChars = {};

    for (int right = 0; right < s.length; right++) {
      String currentChar = s[right];

      if (seenChars.containsKey(currentChar) && seenChars[currentChar]! >= left) {
        left = seenChars[currentChar]! + 1;
      }

      seenChars[currentChar] = right;
      maxLength = (right - left + 1) > maxLength ? (right - left + 1) : maxLength;
    }

    return maxLength;
  }
}
