require 'test_helper'

class StaffingRequestsControllerTest < ActionController::TestCase
  setup do
    @staffing_request = staffing_requests(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:staffing_requests)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create staffing_request" do
    assert_difference('StaffingRequest.count') do
      post :create, staffing_request: { body: @staffing_request.body, title: @staffing_request.title }
    end

    assert_redirected_to staffing_request_path(assigns(:staffing_request))
  end

  test "should show staffing_request" do
    get :show, id: @staffing_request
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @staffing_request
    assert_response :success
  end

  test "should update staffing_request" do
    put :update, id: @staffing_request, staffing_request: { body: @staffing_request.body, title: @staffing_request.title }
    assert_redirected_to staffing_request_path(assigns(:staffing_request))
  end

  test "should destroy staffing_request" do
    assert_difference('StaffingRequest.count', -1) do
      delete :destroy, id: @staffing_request
    end

    assert_redirected_to staffing_requests_path
  end
end
