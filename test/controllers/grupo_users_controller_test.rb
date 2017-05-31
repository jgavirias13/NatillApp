require 'test_helper'

class GrupoUsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @grupo_user = grupo_users(:one)
  end

  test "should get index" do
    get grupo_users_url
    assert_response :success
  end

  test "should get new" do
    get new_grupo_user_url
    assert_response :success
  end

  test "should create grupo_user" do
    assert_difference('GrupoUser.count') do
      post grupo_users_url, params: { grupo_user: { grupo_id: @grupo_user.grupo_id, user_id: @grupo_user.user_id } }
    end

    assert_redirected_to grupo_user_url(GrupoUser.last)
  end

  test "should show grupo_user" do
    get grupo_user_url(@grupo_user)
    assert_response :success
  end

  test "should get edit" do
    get edit_grupo_user_url(@grupo_user)
    assert_response :success
  end

  test "should update grupo_user" do
    patch grupo_user_url(@grupo_user), params: { grupo_user: { grupo_id: @grupo_user.grupo_id, user_id: @grupo_user.user_id } }
    assert_redirected_to grupo_user_url(@grupo_user)
  end

  test "should destroy grupo_user" do
    assert_difference('GrupoUser.count', -1) do
      delete grupo_user_url(@grupo_user)
    end

    assert_redirected_to grupo_users_url
  end
end
