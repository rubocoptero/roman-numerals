# 1 = I
# 3 = III
# 9 = IX
# 1066 = MLXVI
# 1989 = MCMLXXXIX


$max_reps_of_I = 3

def to_roman_numeral(number)
  return 'I' * number if number <= $max_reps_of_I
  return 'VI' if number > 5
  return 'I' * (5 - number) + 'V'
end
