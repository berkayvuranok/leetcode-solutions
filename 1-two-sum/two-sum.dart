class Solution {
  List<int> twoSum(List<int> nums, int target) {
    List<int> result = [];
    for(int i=0; i < nums.length-1;i++) {
        for(int j=i+1;j<nums.length;j++)
        {
            if(nums[i]+nums[j] == target)
            {
                result.addAll([i,j]);
            }
        }
    }
    return result;
  }
}