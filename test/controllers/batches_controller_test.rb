require 'test_helper'

class BatchesControllerTest < ActionController::TestCase
  setup do
    @batch = batches(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:batches)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create batch" do
    assert_difference('Batch.count') do
      post :create, batch: { batch_number: @batch.batch_number, cooking_notes: @batch.cooking_notes, cooking_time: @batch.cooking_time, date: @batch.date, fruit_source: @batch.fruit_source, variety: @batch.variety, yield_integer: @batch.yield_integer }
    end

    assert_redirected_to batch_path(assigns(:batch))
  end

  test "should show batch" do
    get :show, id: @batch
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @batch
    assert_response :success
  end

  test "should update batch" do
    patch :update, id: @batch, batch: { batch_number: @batch.batch_number, cooking_notes: @batch.cooking_notes, cooking_time: @batch.cooking_time, date: @batch.date, fruit_source: @batch.fruit_source, variety: @batch.variety, yield_integer: @batch.yield_integer }
    assert_redirected_to batch_path(assigns(:batch))
  end

  test "should destroy batch" do
    assert_difference('Batch.count', -1) do
      delete :destroy, id: @batch
    end

    assert_redirected_to batches_path
  end
end
