require 'computer'

describe Computer do

  subject(:computer) { described_class.new }

  it 'will output an element of the weapons array' do
    expect(Computer::WEAPONS).to include computer.computers_turn
  end

end