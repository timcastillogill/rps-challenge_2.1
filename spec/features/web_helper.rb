def name_and_play
  visit '/'
  fill_in(:name, with: 'Tim')
  click_button('Play')
end

def play
  visit '/'
  fill_in(:name, with: 'Tim')
  click_button('Play')
  click_button('Paper')
end
