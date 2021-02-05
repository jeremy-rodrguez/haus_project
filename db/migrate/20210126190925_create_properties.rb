class CreateProperties < ActiveRecord::Migration[6.1]
  def change
    create_table :properties do |t|
      t.string :address
      t.string :image
      t.string :status
      t.references :agent, null: false, foreign_key: true

      t.timestamps
    end
  end
end
