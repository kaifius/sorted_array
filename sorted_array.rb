class SortedArray
  attr_accessor :internal_arr # This is for convenience in the tests.

  def initialize(input_arr=[])
    @internal_arr = []
    @input_arr = input_arr
    @input_arr.each do |x|
      add(x)
    end
    # Fill in the rest of the initialize method here.
    # What should you do with each element of the incoming array?
  end

  def add(new_ele)
    # Hint: Use the Array#insert method.
    @internal_arr.insert(first_larger_index(new_ele),new_ele)
  end

  def size
    @internal_arr.size
  end

  def [](index)
    @internal_arr[index]
  end

  def first_larger_index(target, start_ind=0, end_ind=@internal_arr.size)

    array = @internal_arr.slice(start_ind..end_ind)
    i = start_ind

    array.each do |x|
      i += 1 if target > x
    end
    i

    # raise NotImplementedError.new("You need to implement the first_larger_index method!")
  end

  def index(target)
    # @internal_arr.index(target)

  end
end
