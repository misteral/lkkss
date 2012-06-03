require 'test_helper'

class SupportDocumentsControllerTest < ActionController::TestCase
  setup do
    @support_document = support_documents(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:support_documents)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create support_document" do
    assert_difference('SupportDocument.count') do
      post :create, support_document: @support_document.attributes
    end

    assert_redirected_to support_document_path(assigns(:support_document))
  end

  test "should show support_document" do
    get :show, id: @support_document.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @support_document.to_param
    assert_response :success
  end

  test "should update support_document" do
    put :update, id: @support_document.to_param, support_document: @support_document.attributes
    assert_redirected_to support_document_path(assigns(:support_document))
  end

  test "should destroy support_document" do
    assert_difference('SupportDocument.count', -1) do
      delete :destroy, id: @support_document.to_param
    end

    assert_redirected_to support_documents_path
  end
end
