class CreateMyactivities < ActiveRecord::Migration[5.0]
  def change
    create_table :myactivities do |t|

      t.timestamps
    end
  end
end
