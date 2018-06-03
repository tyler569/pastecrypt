class MakePastesOwnedByUsers < ActiveRecord::Migration[5.2]
  def change
    add_reference :pastes, :user, index: true
  end
end
