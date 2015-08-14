require('capybara/rspec')
require('./app.rb')
require('launchy')
require('pry')

Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('dictionary path routing', {:type => :feature}) do
  before() do
    Word.clear()
  end

  it('serves up the index page with a list of words currently in dictionary and an Add Word button') do
    visit('/')
    fill_in('new_word', :with => 'rat')
    click_button('Add Word')
    expect(page).to have_content('rat')
  end

end
