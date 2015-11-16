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

  it 'give back shorted url' do
    url = Url.create(original: 'http://google.pl/')

    visit "/#{url.short}"
    expect(current_url).to eq('http://google.pl/')
  end
end
