require "test_helper"

class Api::V1::PlatformsInformationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @api_v1_platforms_information = api_v1_platforms_informations(:one)
  end

  test "should get index" do
    get api_v1_platforms_informations_url, as: :json
    assert_response :success
  end

  test "should create api_v1_platforms_information" do
    assert_difference("Api::V1::PlatformsInformation.count") do
      post api_v1_platforms_informations_url, params: { api_v1_platforms_information: {  } }, as: :json
    end

    assert_response :created
  end

  test "should show api_v1_platforms_information" do
    get api_v1_platforms_information_url(@api_v1_platforms_information), as: :json
    assert_response :success
  end

  test "should update api_v1_platforms_information" do
    patch api_v1_platforms_information_url(@api_v1_platforms_information), params: { api_v1_platforms_information: {  } }, as: :json
    assert_response :success
  end

  test "should destroy api_v1_platforms_information" do
    assert_difference("Api::V1::PlatformsInformation.count", -1) do
      delete api_v1_platforms_information_url(@api_v1_platforms_information), as: :json
    end

    assert_response :no_content
  end
end
