require 'test_helper'
#このテストは間違ってるかも 特にshowの部分

class CategoriesControllerTest < ActionDispatch::IntegrationTest


  def setup
    @category = Category.create(name: "sports")
  end

  test "should get categories index" do
    get "/categories"
    assert_response :success
  end

  test "should get new" do
    get "/categories/new"
    assert_response :success
  end

  test "should get show" do
    get "/categories/(@category)"
    assert_response :success
  end

end
