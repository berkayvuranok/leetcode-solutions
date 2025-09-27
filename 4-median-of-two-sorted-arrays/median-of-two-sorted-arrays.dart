class Solution {
  double findMedianSortedArrays(List<int> nums1, List<int> nums2) {
    int totalLength = nums1.length + nums2.length;
    int medianIndex1 = totalLength ~/ 2;
    int medianIndex2 = (totalLength % 2 == 0) ? medianIndex1 - 1 : medianIndex1;

    int i = 0, j = 0, count = 0;
    int? current, previous;

    while (count <= medianIndex1) {
      previous = current;

      if (i < nums1.length && (j >= nums2.length || nums1[i] <= nums2[j])) {
        current = nums1[i++];
      } else {
        current = nums2[j++];
      }

      count++;
    }

    if (totalLength % 2 == 0) {
      return ((previous! + current!) / 2);
    } else {
      return current!.toDouble();
    }
  }
}
