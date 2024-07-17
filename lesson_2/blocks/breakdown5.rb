# Break down the code into manageable chunks.

new = [[[1, 2], [3, 4]], [5, 6]].map do |arr| # 2 subarrays, 1 is 3 levels deep
  arr.map do |el|
    if el.to_s.to_i == el   # it's an integer
      el + 1
    else                    # it's an array
      el.map do |n|
        n + 1
      end
    end
  end
end

p new #  => [[[2, 3], [4, 5]], [6, 7]]