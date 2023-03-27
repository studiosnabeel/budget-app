require "test_helper"

class CatTransControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cat_tran = cat_trans(:one)
  end

  test "should get index" do
    get cat_trans_url
    assert_response :success
  end

  test "should get new" do
    get new_cat_tran_url
    assert_response :success
  end

  test "should create cat_tran" do
    assert_difference("CatTran.count") do
      post cat_trans_url, params: { cat_tran: {  } }
    end

    assert_redirected_to cat_tran_url(CatTran.last)
  end

  test "should show cat_tran" do
    get cat_tran_url(@cat_tran)
    assert_response :success
  end

  test "should get edit" do
    get edit_cat_tran_url(@cat_tran)
    assert_response :success
  end

  test "should update cat_tran" do
    patch cat_tran_url(@cat_tran), params: { cat_tran: {  } }
    assert_redirected_to cat_tran_url(@cat_tran)
  end

  test "should destroy cat_tran" do
    assert_difference("CatTran.count", -1) do
      delete cat_tran_url(@cat_tran)
    end

    assert_redirected_to cat_trans_url
  end
end
