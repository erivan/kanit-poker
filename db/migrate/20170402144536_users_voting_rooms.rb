class UsersVotingRooms < ActiveRecord::Migration[5.0]
  def change
    create_join_table :users, :voting_rooms
  end
end
