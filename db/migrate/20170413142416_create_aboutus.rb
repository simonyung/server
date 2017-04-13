class CreateAboutus < ActiveRecord::Migration[5.0]
  def change
    create_table :aboutus do |t|

      t.timestamps
    end
  end
end
