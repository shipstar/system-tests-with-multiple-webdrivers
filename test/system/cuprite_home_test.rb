require "application_system_test_case"

class CupriteHomeTest < ApplicationSystemTestCase
  test "it loads the home page" do
    visit root_path

    expect(page).to have_text("This is a test.")
  end
end