feature 'Homepage' do
  scenario 'will display a message' do
    visit '/'
    expect(page).to have_content 'Rock...'
  end

  scenario 'will allow the user to input their name' do
    visit '/'
    find_field('name').value
  end
end

feature 'Play Page' do

  scenario 'will display the users name up in lights!' do
    name_and_play
    expect(page).to have_content "Tim"
  end

  scenario 'allows the user to choose their weapon' do
    name_and_play
    expect(page).to have_selector(:link_or_button, 'Rock')
  end
end

feature 'Results Page' do

  let(:game) { Game.new }

  scenario 'Checks the users choice is outputted onto the page' do
    name_and_play
    click_button('Paper')
    expect(page).to have_content 'selected Paper'
  end

  # scenario 'Checks the computer choice is outputted onto the page' do
  #   name_and_play
  #   click_button('Paper')
  #   allow(game).to receive(:return_computer_choice).and_return(:paper)
  #   expect(page).to have_content 'computer chose Paper'
  # end

end