require "selenium_system_test_case"

class SeleniumHomeTest < SeleniumSystemTestCase
  test "it loads the home page" do
    visit root_path

    expect(page).to have_text("This is a test.")
  end
end