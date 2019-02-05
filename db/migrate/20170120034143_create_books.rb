class CreateBooks < ActiveRecord::Migration[5.0]
  def change
    create_table :books do |t|
      t.string :title
      t.string :genre
      t.string :isbnNumber
      t.string :author
      t.text :description
      t.datetime :publishDate
      t.timestamps
    end
  end
end
