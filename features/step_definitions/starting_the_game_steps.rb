Then(/^I expect a game to exist$/) do
  expect(@game).to not_be empty?
end