require "minitest"
require "minitest/autorun"
require_relative "bubble_sort"

class BubbleSortTest < Minitest::Test

  # Horace


  # the list was not sorted at that point, so we should make another pass
  # If we reach the end of the list without encountering any "out of order pairs",
  # then good job us, it's sorted

  def test_it_sorts_an_empty_list
    assert_equal [], bubble_sort([])
  end

  def test_it_starts_with_a_single_element
    assert_equal [1], bubble_sort([1])
  end

  def test_it_sorts_2_that_are_already_sorted
    assert_equal [1, 2], bubble_sort([1, 2])
  end

  def test_it_sorts_2_that_are_out_of_order
    assert_equal [1, 2], bubble_sort([2, 1])
  end

  def test_swap_swaps_provided_indices
    list = [2, 1]
    swap!(list, 0, 1)
    assert_equal [1,2], list
  end

  def test_it_can_swap_a_later_pair
    assert_equal [1, 2, 3], bubble_sort([1, 3, 2])

  end

  def test_sorts_when_multiple_passes_are_required
    assert_equal [1,2,3], bubble_sort([3,2,1])
  end

  def test_sorts_something_more_complicated
    assert_equal [1,2,3,4,5,6], bubble_sort([4,1,2,6,5,3])
  end

  def test_sorts_long_list
    list = (1..600).to_a.shuffle
    assert_equal list.sort, bubble_sort(list)
  end

  # def test_it_returns_the_correct_value
  #   bubble = BubbleSort.new
  #   input = [5, 3, 2, 4, 1]
  #   assert_equal [1, 2, 3, 4, 5], bubble.sort_this(input)
  #
  #   # assert_equal 9, bubble.sort_this(input)
  # end


end
