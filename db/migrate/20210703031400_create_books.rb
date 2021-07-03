class CreateBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.date :date
      t.integer :isbn
      t.integer :total_pages

      t.timestamps
    end
  end
end
