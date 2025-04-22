require "test_helper"

class TimeEntriesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get time_entries_index_url
    assert_response :success
  end

  test "should get new" do
    get time_entries_new_url
    assert_response :success
  end

  test "should get create" do
    get time_entries_create_url
    assert_response :success
  end

  test "should get stop" do
    get time_entries_stop_url
    assert_response :success
  end
end
