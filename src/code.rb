# Add D
# Review reachs

def to_roman_numeral(number)
  result = ''
  root = get_root_roman_numeral_for(number)

  if root.value - number > 0
    rest = root.value - number
    candidate = root.substraction_candidate

    if rest >= candidate.value
      result = (candidate.to_s * (rest / candidate.value)) + root
    else
      result = candidate.to_s + root
      result = result + to_roman_numeral(candidate.value - rest)
    end
  else
    rest = number - root.value

    result += root
    result += to_roman_numeral(rest) if rest > 0
  end

  result
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
