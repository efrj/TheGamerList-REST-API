require "test_helper"

class Api::V1::SofthousesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @api_v1_softhouse = api_v1_softhouses(:one)
  end

  test "should get index" do
    get api_v1_softhouses_url, as: :json
    assert_response :success
  end

  test "should create api_v1_softhouse" do
    assert_difference("Api::V1::Softhouse.count") do
      post api_v1_softhouses_url, params: { api_v1_softhouse: {  } }, as: :json
    end

    assert_response :created
  end

  test "should show api_v1_softhouse" do
    get api_v1_softhouse_url(@api_v1_softhouse), as: :json
    assert_response :success
  end

  test "should update api_v1_softhouse" do
    patch api_v1_softhouse_url(@api_v1_softhouse), params: { api_v1_softhouse: {  } }, as: :json
    assert_response :success
  end

  test "should destroy api_v1_softhouse" do
    assert_difference("Api::V1::Softhouse.count", -1) do
      delete api_v1_softhouse_url(@api_v1_softhouse), as: :json
    end

    assert_response :no_content
  end
end
