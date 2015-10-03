class AddSongsTable < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.string :title
      t.string :artist
      t.string :album
      t.decimal :duration, :precision => 11, :scale => 2
      t.integer :source

      t.timestamp :created_at
      t.timestamp :updated_at
    end
  end

  # def down
  #   drop_table :songs
  # end
end
