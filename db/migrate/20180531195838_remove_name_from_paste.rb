class RemoveNameFromPaste < ActiveRecord::Migration[5.2]
  def change
    remove_column :pastes, :name
  end
end
