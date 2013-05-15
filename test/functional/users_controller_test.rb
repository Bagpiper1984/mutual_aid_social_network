require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  setup do
    @user = users(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:users)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user" do
    assert_difference('User.count') do
      post :create, user: { admin: @user.admin, city: @user.city, country: @user.country, date_of_birth: @user.date_of_birth, education: @user.education, email: @user.email, login: @user.login, member_of_volunteer_organizations: @user.member_of_volunteer_organizations, name: @user.name, other_contacts: @user.other_contacts, password_digest: @user.password_digest, phone_number: @user.phone_number, remember_token: @user.remember_token, surname: @user.surname }
    end

    assert_redirected_to user_path(assigns(:user))
  end

  test "should show user" do
    get :show, id: @user
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user
    assert_response :success
  end

  test "should update user" do
    put :update, id: @user, user: { admin: @user.admin, city: @user.city, country: @user.country, date_of_birth: @user.date_of_birth, education: @user.education, email: @user.email, login: @user.login, member_of_volunteer_organizations: @user.member_of_volunteer_organizations, name: @user.name, other_contacts: @user.other_contacts, password_digest: @user.password_digest, phone_number: @user.phone_number, remember_token: @user.remember_token, surname: @user.surname }
    assert_redirected_to user_path(assigns(:user))
  end

  test "should destroy user" do
    assert_difference('User.count', -1) do
      delete :destroy, id: @user
    end

    assert_redirected_to users_path
  end
end
