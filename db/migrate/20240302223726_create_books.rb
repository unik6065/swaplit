class CreateBooks < ActiveRecord::Migration[7.1]
  def change
    create_table :books do |t|
      t.string :EAN
      t.string :title
      t.belongs_to :author, null: false, foreign_key: true
      t.string :editor
      t.string :collection
      t.date :publication_date
      t.text :summary
      t.timestamps
    end
  end
end
