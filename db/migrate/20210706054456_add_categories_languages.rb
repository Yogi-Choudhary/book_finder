class AddCategoriesLanguages < ActiveRecord::Migration[6.1]
  def change
    add_column :books, :category, :string
    add_column :books, :language, :string
  end
end
