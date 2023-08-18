require "test_helper"

class AssetsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @asset = assets(:one)
  end

  test "should get index" do
    get assets_url, as: :json
    assert_response :success
  end

  test "should create asset" do
    assert_difference("Asset.count") do
      post assets_url, params: { asset: { User_id: @asset.User_id, asset_name: @asset.asset_name } }, as: :json
    end

    assert_response :created
  end

  test "should show asset" do
    get asset_url(@asset), as: :json
    assert_response :success
  end

  test "should update asset" do
    patch asset_url(@asset), params: { asset: { User_id: @asset.User_id, asset_name: @asset.asset_name } }, as: :json
    assert_response :success
  end

  test "should destroy asset" do
    assert_difference("Asset.count", -1) do
      delete asset_url(@asset), as: :json
    end

    assert_response :no_content
  end
end
