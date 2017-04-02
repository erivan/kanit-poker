class TasksVotingRooms < ActiveRecord::Migration[5.0]
  def change
    create_join_table :tasks, :voting_rooms
  end
end
