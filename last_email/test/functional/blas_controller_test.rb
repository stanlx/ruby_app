require 'test_helper'

class BlasControllerTest < ActionController::TestCase
  setup do
    @bla = blas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:blas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bla" do
    assert_difference('Bla.count') do
      post :create, :bla => { :content => @bla.content, :id => @bla.id, :sender_id, => @bla.sender_id,, :subject, => @bla.subject, }
    end

    assert_redirected_to bla_path(assigns(:bla))
  end

  test "should show bla" do
    get :show, :id => @bla
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @bla
    assert_response :success
  end

  test "should update bla" do
    put :update, :id => @bla, :bla => { :content => @bla.content, :id => @bla.id, :sender_id, => @bla.sender_id,, :subject, => @bla.subject, }
    assert_redirected_to bla_path(assigns(:bla))
  end

  test "should destroy bla" do
    assert_difference('Bla.count', -1) do
      delete :destroy, :id => @bla
    end

    assert_redirected_to blas_path
  end
end
