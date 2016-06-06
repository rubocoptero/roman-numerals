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
end

