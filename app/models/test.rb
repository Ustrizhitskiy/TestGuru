class Test < ApplicationRecord
  belongs_to :author, class_name: 'User'
  belongs_to :category
  has_many :questions
  has_many :tests_users
  has_many :users, through: :tests_users

  def self.order_tests_by_category(category)
    Test.joins('JOIN categories ON tests.category_id = categories.id').where(
      categories: { title: category}).order('tests.title DESC').pluck(:title)
  end
end
