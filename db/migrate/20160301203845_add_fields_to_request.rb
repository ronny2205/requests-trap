class AddFieldsToRequest < ActiveRecord::Migration
  def change
  	add_column :requests, :remote_ip, :string
  	add_column :requests, :method, :string
  	add_column :requests, :scheme, :string
  	add_column :requests, :req_params, :string
  end
end
