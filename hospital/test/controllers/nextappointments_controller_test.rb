require 'test_helper'

class NextappointmentsControllerTest < ActionController::TestCase
  setup do
    @nextappointment = nextappointments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:nextappointments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create nextappointment" do
    assert_difference('Nextappointment.count') do
      post :create, nextappointment: { appointment_id: @nextappointment.appointment_id, date_of_next_appointment: @nextappointment.date_of_next_appointment, reason_for_visit: @nextappointment.reason_for_visit }
    end

    assert_redirected_to nextappointment_path(assigns(:nextappointment))
  end

  test "should show nextappointment" do
    get :show, id: @nextappointment
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @nextappointment
    assert_response :success
  end

  test "should update nextappointment" do
    patch :update, id: @nextappointment, nextappointment: { appointment_id: @nextappointment.appointment_id, date_of_next_appointment: @nextappointment.date_of_next_appointment, reason_for_visit: @nextappointment.reason_for_visit }
    assert_redirected_to nextappointment_path(assigns(:nextappointment))
  end

  test "should destroy nextappointment" do
    assert_difference('Nextappointment.count', -1) do
      delete :destroy, id: @nextappointment
    end

    assert_redirected_to nextappointments_path
  end
end
