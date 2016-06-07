require_relative './../src/code'

describe 'Roman Numerals' do
  it '1 is I' do
    expect(to_roman_numeral(1)).to eq('I')
  end

  it '3 is III' do
    expect(to_roman_numeral(3)).to eq('III')
  end

  it '5 is V' do
    expect(to_roman_numeral(5)).to eq('V')
  end

  it '4 is IV' do
    expect(to_roman_numeral(4)).to eq('IV')
  end

  it '6 is VI' do
    expect(to_roman_numeral(6)).to eq('VI')
  end

  it '9 is IX' do
    expect(to_roman_numeral(9)).to eq('IX')
  end

  it '15 is XV' do
    expect(to_roman_numeral(15)).to eq('XV')
  end

  # Tried 39 and too long step

  it '18 is XVIII' do
    expect(to_roman_numeral(18)).to eq('XVIII')
  end

  it '40 is XL' do
    # Remove 'I' constant in substraction
    expect(to_roman_numeral(40)).to eq('XL')
  end

  it '42 is XLII' do
    expect(to_roman_numeral(42)).to eq('XLII')
  end

  xit '39 is XXXIX' do
    # Skipped because the step was too long
    # Substraction, recursivity and new roman numeral
    expect(to_roman_numeral(39)).to eq('XXXIX')
  end
end

