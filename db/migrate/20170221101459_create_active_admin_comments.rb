class CreateActiveAdminComments < ActiveRecord::Migration::Current
  def self.up
    create_table :active_admin_comments do |t|
      t.string :namespace
      t.text   :body
      t.string :resource_id,   null: false
      t.string :resource_type, null: false
      t.references :author, polymorphic: true
      t.timestamps
    end
    add_index :active_admin_comments, [:namespace]

    add_index :active_admin_comments, [:resource_type, :resource_id]
  end

  def self.down
    drop_table :active_admin_comments
  end
  def change
    create_table :comments do |t|
      t.text :comment
      t.references :post, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
