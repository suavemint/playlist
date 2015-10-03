class AddUsersTable < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.string :email_address

      t.timestamp :created_at
      t.timestamp :updated_at

      # t.references :playlist, :index => true, :foreign_key => true
    end
  end

  # def down
  #   drop_table :users
  # end
end
