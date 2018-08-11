require "application_system_test_case"

class OrgsTest < ApplicationSystemTestCase
  setup do
    @org = orgs(:one)
  end

  test "visiting the index" do
    visit orgs_url
    assert_selector "h1", text: "Orgs"
  end

  test "creating a Org" do
    visit orgs_url
    click_on "New Org"

    fill_in "Blog Url", with: @org.blog_url
    fill_in "Category Code", with: @org.category_code
    fill_in "Crunchbase Url", with: @org.crunchbase_url
    fill_in "Description", with: @org.description
    fill_in "Homepage Url", with: @org.homepage_url
    fill_in "Name", with: @org.name
    fill_in "Number Of Employees", with: @org.number_of_employees
    fill_in "Oid", with: @org.oid
    fill_in "Permalink", with: @org.permalink
    fill_in "Twitter Username", with: @org.twitter_username
    click_on "Create Org"

    assert_text "Org was successfully created"
    click_on "Back"
  end

  test "updating a Org" do
    visit orgs_url
    click_on "Edit", match: :first

    fill_in "Blog Url", with: @org.blog_url
    fill_in "Category Code", with: @org.category_code
    fill_in "Crunchbase Url", with: @org.crunchbase_url
    fill_in "Description", with: @org.description
    fill_in "Homepage Url", with: @org.homepage_url
    fill_in "Name", with: @org.name
    fill_in "Number Of Employees", with: @org.number_of_employees
    fill_in "Oid", with: @org.oid
    fill_in "Permalink", with: @org.permalink
    fill_in "Twitter Username", with: @org.twitter_username
    click_on "Update Org"

    assert_text "Org was successfully updated"
    click_on "Back"
  end

  test "destroying a Org" do
    visit orgs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Org was successfully destroyed"
  end
end
