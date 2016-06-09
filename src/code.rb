def to_roman_numeral(number)
  return '' if number == 0

  root = get_root_roman_numeral_for(number)
  roman_numeral = RomanNumeral.new(root)

  roman_numeral.substract if roman_numeral.value > number

  rest = roman_numeral.rest_to(number)
  roman_numeral.to_s + to_roman_numeral(rest)
end

class RomanNumeral
  attr_reader :value

  def initialize(root)
    @root = root
    @numerals = [@root]
    @value = root.value
  end

  def substract
    candidate = @root.substraction_candidate
    @numerals.unshift(candidate)
    @value = value - candidate.value
  end

  def rest_to(number)
    (number - value).abs
  end

  def to_s
    @numerals.map(&:to_s).join
  end

  def to_str
    to_s
  end
end

def get_root_roman_numeral_for(number)
  numerals = [I.new, V.new, X.new, L.new, C.new, M.new]
  selected = numerals.select do |numeral|
    number <= numeral.reach
  end

  selected.first
end

class I
  attr_reader :value

  def initialize
    @value = 1
  end

  def to_s
    'I'
  end

  def to_str
    to_s
  end

  def substraction_candidate
    I.new
  end

  def reach
    3
  end
end

class V
  attr_reader :value

  def initialize
    @value = 5
  end

  def to_s
    'V'
  end

  def to_str
    to_s
  end

  def substraction_candidate
    I.new
  end

  def reach
    8
  end
end

class X
  attr_reader :value

  def initialize
    @value = 10
  end

  def to_s
    'X'
  end

  def to_str
    to_s
  end

  def substraction_candidate
    I.new
  end

  def reach
    39
  end
end

class L
  attr_reader :value

  def initialize
    @value = 50
  end

  def to_s
    'L'
  end

  def to_str
    to_s
  end

  def substraction_candidate
    X.new
  end

  def reach
    89
  end
end

class C
  attr_reader :value

  def initialize
    @value = 100
  end

  def to_s
    'C'
  end

  def to_str
    to_s
  end

  def substraction_candidate
    X.new
  end

  def reach
    399
  end
end

class D
  attr_reader :value

  def initialize
    @value = 500
  end

  def to_s
    'D'
  end

  def to_str
    to_s
  end

  def substraction_candidate
    C.new
  end

  def reach
    899
  end
end

class M
  attr_reader :value

  def initialize
    @value = 1000
  end

  def to_s
    'M'
  end

  def to_str
    to_s
  end

  def substraction_candidate
    C.new
  end

  def reach
    4999
  end
end
