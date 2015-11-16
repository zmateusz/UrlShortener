require 'rails_helper'

RSpec.describe do
  it 'displays welcome page' do
    visit '/'
    expect(page).to have_content 'Hello!'
  end

  it 'adds shortened url' do
    visit '/'
    fill_in('url', :with => 'https://elpassion.slack.com')
    click_button 'Submit'
    expect(page).to have_content 'https://elpassion.slack.com - short url added'
  end

  xit 'give back shorted url' do
    visit '/'
    fill_in('url', with: 'https://elpassion.slack.com')
    click_button 'Submit'
    expect(page).to have_content 'elpassion'
    click_link 'elpassion'
    expect(current_url).to eq('https://elpassion.slack.com/')
  end
end
