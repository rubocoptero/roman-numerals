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
end

