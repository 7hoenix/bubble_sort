def bubble_sort(list)
# Loop through our numbers, checking each pair in succession if a pair is out of order
# we need to swap left and right elements of the pair if we make a swap, we know
  list.each_index do |i|

    if list[i+1] && list[i] > list[i+1]
      swap!(list, i, i+1)
    end
  end
  list
end

def swap!(list, index_1, index_2)
  left = list[index_1]
  right = list[index_2]
  list[index_1] = right
  list[index_2] = left

end


# class BubbleSort
#
#   def sort_this(sequence)
#     swaps = 0
#     round = 0
#     swaps_this_round = 1
#     while swaps_this_round > 0
#       round += 1
#       x = 1
#       swaps_this_round = 0
#       puts "Round: #{round}"
#       while x <= sequence.size - 1
#         if sequence[x] < sequence[x-1]
#           in_process = sequence[x]
#           sequence[x] = sequence[x-1]
#           sequence[x-1] = in_process
#
#           swaps_this_round += 1
#
#           swaps += 1
#
#           # Uncomment the below line to change to long form.
#           #x = sequence.size
#         else
#           x += 1
#         end
#       end
#       result = sequence.to_a
#     end
#
#     puts "Final result: #{result}"
#
#     puts "Final result: #{swaps}"
#     result
#   end
#
# end
#
# bubble = BubbleSort.new
# bubble.sort_this([5, 3, 2, 4, 1])
