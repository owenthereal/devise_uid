class DeviseUidAddTo<%= table_name.camelize %> < ActiveRecord::Migration
  def change
    add_column :users, :uid, :string
    add_index :users, :uid, :unique => true
  end
end
