require 'spec_helper'

feature 'shows site is under maintenance' do 
  scenario 'user visits page and is told to return when maintenance finished or visit store' do
    visit '/'
    expect(page).to have_content "This site is under maintenance please come back soon"
    expect(page).to have_content "If you can't wait, please visit our bricks and mortar store here:"
  end
end