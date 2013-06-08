require 'test_helper'

class SearchTest < ActionDispatch::IntegrationTest
  test "search for item in database works" do
  	visit root_path
  	assert_equal root_path, current_path
  	link = Link.create(:title => "Testing is for pussys!", :url => "lemonparty.org")
  	fill_in 'q' , :with => "Testing"
  	click_button 'Search'
  	assert has_content?(link.title)
  end
end