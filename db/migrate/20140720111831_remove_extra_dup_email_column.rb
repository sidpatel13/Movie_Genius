class RemoveExtraDupEmailColumn < ActiveRecord::Migration
  def change
    remove_column :users, :email, :string
  end
end