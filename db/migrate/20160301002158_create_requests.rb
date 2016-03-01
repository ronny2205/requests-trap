class CreateRequests < ActiveRecord::Migration
  def change
    create_table :requests do |t|
      t.string :trap_name	
      t.text :request_info
      t.timestamps null: false
    end
  end
end
