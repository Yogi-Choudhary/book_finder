class CreatePolyImages < ActiveRecord::Migration[6.1]
  def change
    create_table :poly_images do |t|
      t.string :image
      t.references :imageable, polymorphic: true, null: false

      t.timestamps
    end
  end
end
