class AddBookPriceDescriptionPrerievPdf < ActiveRecord::Migration[6.1]
  def change
    add_column :books, :price, :float
    add_column :books, :description, :text
    add_column :books, :preview_pdf, :string
    add_column :books, :pdf_file, :string
  end
end
