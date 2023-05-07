require "test_helper"

class Api::V1::PlatformsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @api_v1_platform = api_v1_platforms(:one)
  end

  test "should get index" do
    get api_v1_platforms_url, as: :json
    assert_response :success
  end

  test "should create api_v1_platform" do
    assert_difference("Api::V1::Platform.count") do
      post api_v1_platforms_url, params: { api_v1_platform: {  } }, as: :json
    end

    assert_response :created
  end

  test "should show api_v1_platform" do
    get api_v1_platform_url(@api_v1_platform), as: :json
    assert_response :success
  end

  test "should update api_v1_platform" do
    patch api_v1_platform_url(@api_v1_platform), params: { api_v1_platform: {  } }, as: :json
    assert_response :success
  end

  test "should destroy api_v1_platform" do
    assert_difference("Api::V1::Platform.count", -1) do
      delete api_v1_platform_url(@api_v1_platform), as: :json
    end

    assert_response :no_content
  end
end
