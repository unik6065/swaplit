class CreateUserBooks < ActiveRecord::Migration[7.1]
  def change
    create_table :user_books do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :book, null: false, foreign_key: true
      t.boolean :read, default: false
      t.decimal :price, precision: 10, scale: 2
      t.timestamps
    end
  end
end
