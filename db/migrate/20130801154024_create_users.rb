class CreateUsers < ActiveRecord::Migration
  def up
    create_table :users do |t|
      t.timestamps
      t.string :email, :unigue => true
      t.string :user_name, :password_digest
      t.string :f_name, :l_name
      t.text :bio
      t.boolean :admin, :default => false
    end
  end
end
