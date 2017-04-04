module Voting
  module Tasks
    class TaskRepo < Voting::Repository

      def initialize db = Task
        super db
      end
    end
  end
end
