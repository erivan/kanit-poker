class CreateSessionVotes < ActiveRecord::Migration[5.0]
  def change
    create_table :session_votes do |t|
      t.integer    :voting_room_id
      t.integer    :task_id
      t.integer    :user_id
      t.integer    :difficulty
      t.integer    :effort
    end
    add_foreign_key :voting_rooms, :session_votes
    add_foreign_key :tasks, :session_votes
    add_foreign_key :users, :session_votes
  end
end
