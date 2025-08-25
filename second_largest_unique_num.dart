def sum_of_two_largest(nums):
    unique_nums = list(set(nums))
    unique_nums.sort(reverse=True)
    if len(unique_nums) < 2:
        return None
    return unique_nums[0] + unique_nums[1]

nums = [10, 9, 3, 4, 5, 6, 7, 13]
result = sum_of_two_largest(nums)
print(result)  # Output: 23