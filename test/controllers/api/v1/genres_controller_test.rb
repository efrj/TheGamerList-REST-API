require "test_helper"

class Api::V1::GenresControllerTest < ActionDispatch::IntegrationTest
  setup do
    @api_v1_genre = api_v1_genres(:one)
  end

  test "should get index" do
    get api_v1_genres_url, as: :json
    assert_response :success
  end

  test "should create api_v1_genre" do
    assert_difference("Api::V1::Genre.count") do
      post api_v1_genres_url, params: { api_v1_genre: {  } }, as: :json
    end

    assert_response :created
  end

  test "should show api_v1_genre" do
    get api_v1_genre_url(@api_v1_genre), as: :json
    assert_response :success
  end

  test "should update api_v1_genre" do
    patch api_v1_genre_url(@api_v1_genre), params: { api_v1_genre: {  } }, as: :json
    assert_response :success
  end

  test "should destroy api_v1_genre" do
    assert_difference("Api::V1::Genre.count", -1) do
      delete api_v1_genre_url(@api_v1_genre), as: :json
    end

    assert_response :no_content
  end
end
