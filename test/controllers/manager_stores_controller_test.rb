require 'test_helper'

class ManagerStoresControllerTest < ActionDispatch::IntegrationTest
  setup do
    @manager_store = manager_stores(:one)
  end

  test "should get index" do
    get manager_stores_url
    assert_response :success
  end

  test "should get new" do
    get new_manager_store_url
    assert_response :success
  end

  test "should create manager_store" do
    assert_difference('ManagerStore.count') do
      post manager_stores_url, params: { manager_store: { manager_id: @manager_store.manager_id, store_id: @manager_store.store_id } }
    end

    assert_redirected_to manager_store_url(ManagerStore.last)
  end

  test "should show manager_store" do
    get manager_store_url(@manager_store)
    assert_response :success
  end

  test "should get edit" do
    get edit_manager_store_url(@manager_store)
    assert_response :success
  end

  test "should update manager_store" do
    patch manager_store_url(@manager_store), params: { manager_store: { manager_id: @manager_store.manager_id, store_id: @manager_store.store_id } }
    assert_redirected_to manager_store_url(@manager_store)
  end

  test "should destroy manager_store" do
    assert_difference('ManagerStore.count', -1) do
      delete manager_store_url(@manager_store)
    end

    assert_redirected_to manager_stores_url
  end
end
