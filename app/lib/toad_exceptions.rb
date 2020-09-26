# frozen_string_literal: true

module ToadExceptions
  class WrongParameter < StandardError
    def initialize
      message = 'Wrong Parameter'
      super(message)
    end
  end
end
