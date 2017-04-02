class CreateVotingRooms < ActiveRecord::Migration[5.0]
  def change
    create_table :voting_rooms do |t|
      t.string     :name
    end
  end
end
