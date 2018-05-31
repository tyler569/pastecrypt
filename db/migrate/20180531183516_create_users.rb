class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :login_name
      t.string :hashed_password

      t.timestamps
    end
  end
end
