require_relative './../src/code'

describe 'Roman Numerals' do
  it '1 is I' do
    expect(to_roman_numeral(1)).to eq('I')
  end
end

