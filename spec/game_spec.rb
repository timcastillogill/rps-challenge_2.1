require 'game'

describe Game do

  subject(:game) { described_class.new }

  it 'will return the players name' do
    allow(game).to receive(:name).and_return('Tim')
    expect(game.name).to eq 'Tim'
  end

  it 'will check for a draw' do
    allow(game).to receive(:return_user_choice).and_return(:paper)
    allow(game).to receive(:return_computer_choice).and_return(:paper)
    expect(game.game_result).to eq 'This round was a draw!'
  end

  it 'will check for a user win with rock vs. paper' do
    allow(game).to receive(:return_user_choice).and_return(:paper)
    allow(game).to receive(:return_computer_choice).and_return(:rock)
    expect(game.game_result).to eq 'You won, congrats!'
  end

  it 'will check for a user win with paper vs rock' do
      allow(game).to receive(:return_user_choice).and_return(:scissors)
      allow(game).to receive(:return_computer_choice).and_return(:paper)
      expect(game.game_result).to eq 'You won, congrats!'
  end

  it 'will check for a user win with scissors vs. rock' do
    allow(game).to receive(:return_user_choice).and_return(:rock)
    allow(game).to receive(:return_computer_choice).and_return(:scissors)
    expect(game.game_result).to eq 'You won, congrats!'
  end

  it 'will check for a computer win' do
    allow(game).to receive(:return_user_choice).and_return(:rock)
    allow(game).to receive(:return_computer_choice).and_return(:paper)
    expect(game.game_result).to eq 'You lose and the computer smiles :) and pities you'
  end
end