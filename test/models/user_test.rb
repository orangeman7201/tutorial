require "test_helper"

class UserTest < ActiveSupport::TestCase
  def setup
    @user = User.new(name: "akita", email: "akita@gmail.com",
                     password: "example", password_confirmation: "example")
  end

  test "should be valid" do
    assert @user.valid?
  end

  test "name should be present" do
    @user.name = "     "
    assert_not @user.valid?
  end

  test "email should be present" do
    @user.email = "     "
    assert_not @user.valid?
  end

  test "nameが50字以下であることを確認するテスト" do
    @user.name = "a" * 51
    assert_not @user.valid?
  end

  test "emailが250字以下であることを確認するテスト" do
    @user.email = "a" * 244 + "gmail.com"
    assert_not @user.valid?
  end

  test "emailが有効かを確認するテスト" do
    valid_addresses = %w[user@example,com USERfoo.COM A_US-ER@foo_bar.org first.last@foo,jp alice+bobbazcn]
    valid_addresses.each do |valid_address|
      @user.email = valid_address
      assert_not @user.valid?, "#{valid_address.inspect} should be valid"
    end
  end

  test "emailが一意であるかを確認するテスト" do
    dup_user = @user.dup
    dup_user.email = @user.email.upcase
    @user.save
    assert_not dup_user.valid?
  end

  test "emailを保存するときに小文字になるか確認するテスト" do
    mixcase_email = "Foo@ExAMPle.CoM"
    @user.email = mixcase_email
    @user.save
    assert_equal mixcase_email.downcase, @user.reload.email
  end

  test "passwordが空白でないことを確認するテスト" do
    @user.password = " " * 6
    @user.password_confirmation = " " * 6
    assert_not @user.valid?
  end

  test "passwordが6文字未満でないを確認するテスト" do
    @user.password = "a" * 5
    @user.password_confirmation = "a" * 5
    assert_not @user.valid?
  end
end
