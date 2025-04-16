class Solution:
    def thirdMax(self, nums: List[int]) -> int:

        # [1, 2, 2, 3, 2, 4]

        result = list(set(nums))

        result.sort()

        if(len(result) >= 3):
            return result[-3]
        else:
            return result[-1]
        
        