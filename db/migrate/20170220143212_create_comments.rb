class CreateComments < ActiveRecord::Migration[5.0]
  def change
    drop_table :comments
    create_table :comments do |t|
      t.text :comment
      t.references :post, foreign_key: true
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
