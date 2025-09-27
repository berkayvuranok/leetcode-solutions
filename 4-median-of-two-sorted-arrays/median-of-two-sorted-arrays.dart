class Solution {
  double findMedianSortedArrays(List<int> nums1, List<int> nums2) {
    final nums = <int>[...nums1, ...nums2]..sort();
    final middle = nums.length ~/ 2; //Rounded integer middle

    if (middle == nums.length / 2) { //Is rounded middle == real middle
      int x = middle;
      int y = middle - 1;
      return (nums[x] + nums[y]) / 2;
    } else {
      int x = middle;
      return nums[x].toDouble();
    }
  }
}