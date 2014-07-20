class AddNameEmailToUser < ActiveRecord::Migration
  def change
    add_column :users, :email_address, :string
    add_column :users, :full_name, :string
  end
end
