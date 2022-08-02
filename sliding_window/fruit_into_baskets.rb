def total_fruit(trees)
    start = 0
    max = 0
    basket = {}
    for i in 0...trees.length
        if basket.length < 2 && !basket.key?(trees[i])
            basket.store(trees[i], true)
            max = [max, i - start + 1].max
        elsif basket.key?(trees[i])
            max = [max, i - start + 1].max
        else
            puts basket
            basket = Hash.new(0)
            basket.store(trees[i-1], true)
            basket.store(trees[i], true)
            start = i - 1

            while trees[start] == trees[start-1]
                start -= 1
            end
            max = [max, i - start + 1].max
        end
    end

    max

end

puts total_fruit([1,2,3,2,2]
)