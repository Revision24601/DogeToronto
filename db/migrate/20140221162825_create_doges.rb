class CreateDoges < ActiveRecord::Migration
  def change
    create_table :doges do |t|

      t.timestamps
    end
  end
end
