class ChangeColumnNameAndAddNewColumn < ActiveRecord::Migration[6.1]
  def change
    rename_column :books, :name, :title
    add_column    :books, :author, :string
    add_column    :books, :date, :date
  end
end
