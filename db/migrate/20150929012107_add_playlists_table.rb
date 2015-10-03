class AddPlaylistsTable < ActiveRecord::Migration
  def change
    create_table :playlists do |t|
      t.string :name
      t.text :description

      t.timestamp :created_at
      t.timestamp :updated_at

      # t.references :song, :index => true, :foreign_key => true
    end
  end

  # def down
  #   drop_table :playlists
  # end
end
