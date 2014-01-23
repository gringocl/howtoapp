require "test_helper"

describe StepsController do

  before do
    @step = steps(:one)
  end

  it "must get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:steps)
  end

  it "must get new" do
    get :new
    assert_response :success
  end

  it "must create step" do
    assert_difference('Step.count') do
      post :create, step: {  }
    end

    assert_redirected_to step_path(assigns(:step))
  end

  it "must show step" do
    get :show, id: @step
    assert_response :success
  end

  it "must get edit" do
    get :edit, id: @step
    assert_response :success
  end

  it "must update step" do
    put :update, id: @step, step: {  }
    assert_redirected_to step_path(assigns(:step))
  end

  it "must destroy step" do
    assert_difference('Step.count', -1) do
      delete :destroy, id: @step
    end

    assert_redirected_to steps_path
  end

end
