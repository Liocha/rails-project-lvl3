class CreateBulletins < ActiveRecord::Migration[6.1]
  def change
    create_table :bulletins do |t|
      t.references :category, null: false, foreign_key: true, index: true
      t.references :creator, null: false, index: true, foreign_key: { to_table: :users }
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end
