# 1 = I
# 3 = III
# 9 = IX
# 1066 = MLXVI
# 1989 = MCMLXXXIX

def to_roman_numeral(number)
  values = {
    'I' => 1,
    'V' => 5,
    'X' => 10
  }

  main = get_main_roman_numeral_for(number)
  main_value = values[main]
  candidate = get_next_to_add(main)

  if main_value - number > 0
    ('I' * (main_value - number)) + main
  else
    main + (candidate * ((number - main_value) / values[candidate]))
  end
end

def get_next_to_add(roman_numeral)
  symbols = ['I', 'V', 'X']
  index = symbols.index(roman_numeral)

  return 'I' if index == 0

  symbols[index - 1]
end

def get_main_roman_numeral_for(number)
  max_num_from_I = 3
  max_num_from_V = 8

  return 'I' if number <= max_num_from_I
  return 'V' if number <= max_num_from_V
  return 'X'
end
