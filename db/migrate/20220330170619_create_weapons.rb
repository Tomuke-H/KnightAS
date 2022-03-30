class CreateWeapons < ActiveRecord::Migration[6.1]
  def change
    create_table :weapons do |t|
      t.string :name
      t.string :subtype
      t.integer :ammo
      t.float :wear
      t.belongs_to :knight, null: false, foreign_key: true

      t.timestamps
    end
  end
end
