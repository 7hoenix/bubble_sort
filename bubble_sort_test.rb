require 'minitest'
require_relative 'bubble_sort'

class BubbleSortTest < Minitest::Test
  def test_it_returns_the_correct_value
    bubble = BubbleSort.new
    input = [5, 3, 2, 4, 1]
    assert_equal [1, 2, 3, 4, 5], bubble.sort_this(input)

    # assert_equal 9, bubble.swaps
  end


end
