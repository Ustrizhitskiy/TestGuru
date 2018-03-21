class Test < ApplicationRecord
  def self.order_tests_by_category(category)
    Test.joins('JOIN categories ON tests.category_id = categories.id').where(
      categories: { title: category}).order('tests.title DESC')pluck(:title)
  end
end
