class CreatePcomments < ActiveRecord::Migration[5.0]
  def change
    create_table :pcomments do |t|
      t.text :pcomment
      t.references :photo, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
