sequence = [5, 4, 3, 2, 1]
swaps = 0
round = 0
swaps_this_round = 1
while swaps_this_round > 0
  x = 1
  swaps_this_round = 0

  while x <= sequence.size - 1
    if sequence[x] < sequence[x-1]
      in_process = sequence[x]
      sequence[x] = sequence[x-1]
      sequence[x-1] = in_process

      swaps_this_round += 1

      round += 1
      swaps += 1
    else
      x += 1
    end
  end
  result = sequence.to_a
end

puts "Final result: #{result}"
puts "Swaps: #{swaps}"
