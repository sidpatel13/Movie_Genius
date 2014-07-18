class CreateTables < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username, :password
      t.timestamps
    end

    create_table :movies do |t|
      t.string :title
      t.timestamps
    end

    create_table :lines do |t|
      t.text :text
      t.references :movie
      t.timestamps
    end

    create_table :comments do |t|
      t.text :text
      t.integer :vote_count
      t.references :line
      t.references :user
      t.timestamps
    end

  end
end
