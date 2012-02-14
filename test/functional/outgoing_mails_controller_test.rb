require 'test_helper'

class OutgoingMailsControllerTest < ActionController::TestCase
  setup do
    @outgoing_mail = outgoing_mails(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:outgoing_mails)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create outgoing_mail" do
    assert_difference('OutgoingMail.count') do
      post :create, outgoing_mail: @outgoing_mail.attributes
    end

    assert_redirected_to outgoing_mail_path(assigns(:outgoing_mail))
  end

  test "should show outgoing_mail" do
    get :show, id: @outgoing_mail.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @outgoing_mail.to_param
    assert_response :success
  end

  test "should update outgoing_mail" do
    put :update, id: @outgoing_mail.to_param, outgoing_mail: @outgoing_mail.attributes
    assert_redirected_to outgoing_mail_path(assigns(:outgoing_mail))
  end

  test "should destroy outgoing_mail" do
    assert_difference('OutgoingMail.count', -1) do
      delete :destroy, id: @outgoing_mail.to_param
    end

    assert_redirected_to outgoing_mails_path
  end
end
