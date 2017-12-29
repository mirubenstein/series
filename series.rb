class Series
  attr_reader :number

  def initialize(number)
    @number = number
  end

  def slices(length)
    if length > number.length
      raise ArgumentError,
            "Slice length(#{length}) must be less than string length(#{number.length})."
    end
    number
      .each_char
      .each_cons(length)
      .entries
      .map(&:join)
  end
end
