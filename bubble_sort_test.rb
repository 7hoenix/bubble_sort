require 'minitest'
require 'minitest/autorun'
require_relative 'bubble_sort'

class BubbleSortTest < Minitest::Test
  # Horace
  def test_true
    assert_true
  end

  # Loop through our numbers, checking each pair in succession if a pair is out of order
  # we need to swap left and right elements of the pair if we make a swap, we know
  # the list was not sorted at that point, so we should make another pass
  # If we reach the end of the list without encountering any "out of order pairs",
  # then good job us, it's sorted
  
  def test_it_returns_the_correct_value
    bubble = BubbleSort.new
    input = [5, 3, 2, 4, 1]
    assert_equal [1, 2, 3, 4, 5], bubble.sort_this(input)

    # assert_equal 9, bubble.sort_this(input)
  end


end
