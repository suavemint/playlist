class AddPlaylistsToUsers < ActiveRecord::Migration
  def change
    add_reference :users, :playlist, index: true, foreign_key: true
  end
end
