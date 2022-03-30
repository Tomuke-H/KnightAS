class CreateKnights < ActiveRecord::Migration[6.1]
  def change
    create_table :knights do |t|
      t.string :name
      t.string :frame
      t.float :body
      t.float :larm
      t.float :rarm
      t.float :lleg
      t.float :rleg
      t.float :shield
      t.belongs_to :player, null: false, foreign_key: true

      t.timestamps
    end
  end
end
