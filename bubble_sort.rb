def bubble_sort(list)
  # loop through our numbers,
  # checking each pair in succession
  if list[1] && list[0] > list[1]
    swap(0, 1)
    # left = list[0]
    # right = list[1]
    # list[0] = right
    # list[1] = left
  end
  list
end

def swap(index_1, index_2)

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
