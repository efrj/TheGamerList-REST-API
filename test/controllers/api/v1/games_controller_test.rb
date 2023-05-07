require "test_helper"

class Api::V1::GamesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @api_v1_game = api_v1_games(:one)
  end

  test "should get index" do
    get api_v1_games_url, as: :json
    assert_response :success
  end

  test "should create api_v1_game" do
    assert_difference("Api::V1::Game.count") do
      post api_v1_games_url, params: { api_v1_game: {  } }, as: :json
    end

    assert_response :created
  end

  test "should show api_v1_game" do
    get api_v1_game_url(@api_v1_game), as: :json
    assert_response :success
  end

  test "should update api_v1_game" do
    patch api_v1_game_url(@api_v1_game), params: { api_v1_game: {  } }, as: :json
    assert_response :success
  end

  test "should destroy api_v1_game" do
    assert_difference("Api::V1::Game.count", -1) do
      delete api_v1_game_url(@api_v1_game), as: :json
    end

    assert_response :no_content
  end
end
