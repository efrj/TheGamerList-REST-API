require "test_helper"

class Api::V1::BannersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @api_v1_banner = api_v1_banners(:one)
  end

  test "should get index" do
    get api_v1_banners_url, as: :json
    assert_response :success
  end

  test "should create api_v1_banner" do
    assert_difference("Api::V1::Banner.count") do
      post api_v1_banners_url, params: { api_v1_banner: {  } }, as: :json
    end

    assert_response :created
  end

  test "should show api_v1_banner" do
    get api_v1_banner_url(@api_v1_banner), as: :json
    assert_response :success
  end

  test "should update api_v1_banner" do
    patch api_v1_banner_url(@api_v1_banner), params: { api_v1_banner: {  } }, as: :json
    assert_response :success
  end

  test "should destroy api_v1_banner" do
    assert_difference("Api::V1::Banner.count", -1) do
      delete api_v1_banner_url(@api_v1_banner), as: :json
    end

    assert_response :no_content
  end
end
