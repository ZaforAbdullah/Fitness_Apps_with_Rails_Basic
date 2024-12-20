class CreateProfiles < ActiveRecord::Migration[7.0]
  def change
    create_table :profiles do |t|
      t.references :user, null: false, foreign_key: true
      t.float :weight, null: true
      t.float :height, null: true
      t.string :fitness_goal, null: true

      t.timestamps
    end
  end
end
