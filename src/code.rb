# 1 = I
# 3 = III
# 9 = IX
# 1066 = MLXVI
# 1989 = MCMLXXXIX

# 39 = IXL
# I have to add the new roman numeral to values, symbols and reach.

def to_roman_numeral(number)
  result = ''
  root = get_root_roman_numeral_for(number)

  if root.value - number > 0
    rest = root.value - number
    candidate = root.substraction_candidate
    result = (candidate.to_s * (rest / candidate.value)) + root
  else
    rest = number - root.value

    result += root
    result += to_roman_numeral(rest) if rest > 0
  end

  result
end

def get_root_roman_numeral_for(number)
  max_num_from_I = 3
  max_num_from_V = 8
  max_num_from_X = 38

  return I.new if number <= max_num_from_I
  return V.new if number <= max_num_from_V
  return X.new if number <= max_num_from_X
  return L.new
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
end
