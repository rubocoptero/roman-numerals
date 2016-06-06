# 1 = I
# 3 = III
# 9 = IX
# 1066 = MLXVI
# 1989 = MCMLXXXIX


$max_num_from_I = 3

def to_roman_numeral(number)
  values = {
    'I' => 1,
    'V' => 5
  }

  main = get_main_roman_numeral_for(number)
  main_value = values[main]

  if main_value - number > 0
    ('I' * (main_value - number)) + main
  else
    main + ('I' * (number - main_value))
  end
end

def get_main_roman_numeral_for(number)
  max_num_from_I = 3
  max_num_from_V = 8

  return 'I' if number <= max_num_from_I
  return 'V' if number <= max_num_from_V
end
