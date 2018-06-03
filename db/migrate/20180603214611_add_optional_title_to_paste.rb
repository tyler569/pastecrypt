class AddOptionalTitleToPaste < ActiveRecord::Migration[5.2]
  def change
    add_column :pastes, :title, :string
  end
end
