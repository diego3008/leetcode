def find_max_average(nums, k)
    window_sum = 0
    start = 0
    max_avrg = -999999999
    for i in 0..nums.length-1
        window_sum += nums[i] # 1 -> 13 -> 8 -> 2

        if i - start + 1 == k
            max_avrg = max_avrg > window_sum.to_f / k ? max_avrg : window_sum.to_f / k
            window_sum = window_sum - nums[start]
            start = start + 1
        end

    end
    return max_avrg
end
#                    start
#                              end
puts find_max_average([1,12,-5,-6,50,3], 4)