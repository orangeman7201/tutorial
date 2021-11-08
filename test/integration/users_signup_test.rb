require "test_helper"

class UsersSignupTest < ActionDispatch::IntegrationTest
  
  test "invalid signup information" do
    get 'http://localhost:8080/signup'
    assert_no_difference 'User.count' do
      post users_path, params: { name: "", email: "user@invalid", password: "foo", confirmation: "bar" }
    end
    assert_select "p", /Name can't be blank/
    assert_select "p", /Email is invalid/
    assert_select "p", /Password confirmation doesn't match Password/
    assert_select "p", /Password is too short/
  end

  test "sucess signup information" do
    get 'http://localhost:8080/signup'
    assert_difference 'User.count', 1 do
      post users_path, params: { name: "akita", email: "akita@example.com", password: "akitaakita", confirmation: "akitaakita" }
    end
  end

  test "UserDetailPageにアクセスしたときFlashが表示されているか確認するテスト" do
    post users_path, params: { name: "akita", email: "akita@example.com", password: "akitaakita", confirmation: "akitaakita" }
    get 'http://localhost:8080/users/0'
    assert_select "v-alert", 1
  end
end
