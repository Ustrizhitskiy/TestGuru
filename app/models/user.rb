class User < ApplicationRecord
  has_many :tests, class_name: 'Test', foreign_key: :author_id
  has_many :tests_users
  has_many :tests, through: :tests_users

  def user_tests_list_by_level(level)
    Test.joins('JOIN tests_user ON tests.id = tests_users.test_id'.where(
      tests_users: { user_id: id }, level: level))
  end
end
