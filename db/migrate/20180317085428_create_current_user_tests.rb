class CreateCurrentUserTests < ActiveRecord::Migration[5.1]
  def change
    create_table :current_user_tests do |t|
      t.references :user, foreign_key: true
      t.references :test, foreign_key: true

      t.timestamps
    end
  end
end
