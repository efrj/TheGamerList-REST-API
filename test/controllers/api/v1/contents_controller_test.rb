require "test_helper"

class Api::V1::ContentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @api_v1_content = api_v1_contents(:one)
  end

  test "should get index" do
    get api_v1_contents_url, as: :json
    assert_response :success
  end

  test "should create api_v1_content" do
    assert_difference("Api::V1::Content.count") do
      post api_v1_contents_url, params: { api_v1_content: {  } }, as: :json
    end

    assert_response :created
  end

  test "should show api_v1_content" do
    get api_v1_content_url(@api_v1_content), as: :json
    assert_response :success
  end

  test "should update api_v1_content" do
    patch api_v1_content_url(@api_v1_content), params: { api_v1_content: {  } }, as: :json
    assert_response :success
  end

  test "should destroy api_v1_content" do
    assert_difference("Api::V1::Content.count", -1) do
      delete api_v1_content_url(@api_v1_content), as: :json
    end

    assert_response :no_content
  end
end
