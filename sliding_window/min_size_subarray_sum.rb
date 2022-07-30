def min_sub_array_len(target, nums)
    start = 0
    window_sum = 0
    minimum = 999999999
    for i in 0..nums.length-1
        window_sum += nums[i]
        while window_sum >= target
            minimum = [minimum, i - start + 1].min
            window_sum -= nums[start]
            start += 1
        end
    end
    
    return minimum == 999999999 ? 0 : minimum
            
end

puts min_sub_array_len([2,3,1,2,4,3], 7)