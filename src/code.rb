# 1 = I
# 3 = III
# 9 = IX
# 1066 = MLXVI
# 1989 = MCMLXXXIX
#

def to_roman_numeral(number)
  return 'I' * number if number <= 3
  return 'IV' if number < 5
  return 'V'
end
