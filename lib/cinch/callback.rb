module Cinch
  # @api private
  class Callback
    include Helpers

    attr_reader :bot
    def initialize(bot)
      @bot = bot
    end

    def call(message, *args, block)
      instance_exec(message, *args, &block)
    end
  end
end
