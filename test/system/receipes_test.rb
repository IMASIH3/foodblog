require "application_system_test_case"

class ReceipesTest < ApplicationSystemTestCase
  setup do
    @receipe = receipes(:one)
  end

  test "visiting the index" do
    visit receipes_url
    assert_selector "h1", text: "Receipes"
  end

  test "creating a Receipe" do
    visit receipes_url
    click_on "New Receipe"

    fill_in "Category", with: @receipe.category
    fill_in "Cooking time", with: @receipe.cooking_time
    fill_in "Created by", with: @receipe.created_by
    fill_in "Direction", with: @receipe.direction
    fill_in "Ingredient", with: @receipe.ingredient
    fill_in "Name", with: @receipe.name
    fill_in "Picture", with: @receipe.picture
    fill_in "Preparation time", with: @receipe.preparation_time
    fill_in "Servings", with: @receipe.servings
    click_on "Create Receipe"

    assert_text "Receipe was successfully created"
    click_on "Back"
  end

  test "updating a Receipe" do
    visit receipes_url
    click_on "Edit", match: :first

    fill_in "Category", with: @receipe.category
    fill_in "Cooking time", with: @receipe.cooking_time
    fill_in "Created by", with: @receipe.created_by
    fill_in "Direction", with: @receipe.direction
    fill_in "Ingredient", with: @receipe.ingredient
    fill_in "Name", with: @receipe.name
    fill_in "Picture", with: @receipe.picture
    fill_in "Preparation time", with: @receipe.preparation_time
    fill_in "Servings", with: @receipe.servings
    click_on "Update Receipe"

    assert_text "Receipe was successfully updated"
    click_on "Back"
  end

  test "destroying a Receipe" do
    visit receipes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Receipe was successfully destroyed"
  end
end
