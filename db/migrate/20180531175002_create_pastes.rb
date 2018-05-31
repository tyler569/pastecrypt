class CreatePastes < ActiveRecord::Migration[5.2]
  def change
    create_table :pastes do |t|
      t.string :name
      t.text :data

      t.timestamps
    end
  end
end
