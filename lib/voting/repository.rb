module Voting
  class Repository

    def initialize adapter
      @adapter = adapter
    end

    def save params, id = nil
      unless id.present?
        adapter.create params
      else
        adapter.update id, params.except(:id)
      end
    end

    private

    attr_reader :adapter
  end
end
