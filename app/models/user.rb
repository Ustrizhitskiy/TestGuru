class User < ApplicationRecord
  def user_tests_list_by_level(level)
    Test.joins('JOIN tests_user ON tests.id = tests_users.test_id'.where(
      tests_users: { user_id: id }, level: level))
  end
end
