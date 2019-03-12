class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name

      t.timestamps
      t.references :category, references: :category
    end
  end
end
