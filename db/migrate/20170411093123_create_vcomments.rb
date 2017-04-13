class CreateVcomments < ActiveRecord::Migration[5.0]
  def change
    create_table :vcomments do |t|
      t.text :vcomment
      t.references :user, foreign_key: true
      t.references :video, foreign_key: true

      t.timestamps
    end
  end
end
