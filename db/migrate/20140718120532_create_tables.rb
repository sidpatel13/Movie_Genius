class CreateTables < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username, :password_digest
      t.timestamps
    end

    create_table :movies do |t|
      t.string :title
      t.text :synopsis
      t.timestamps
    end

    create_table :lines do |t|
      t.text :text
      t.references :movie
      t.timestamps
    end

    create_table :comments do |t|
      t.text :text
      t.integer :vote_count, default: 0
      t.references :line
      t.references :user
      t.timestamps
    end

    create_table :scripts do |t|
      t.text :title
      t.text :plot
      t.timestamps
    end
  end
end
