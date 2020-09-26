# frozen_string_literal: true

module RescueError
  extend ActiveSupport::Concern

  included do
    rescue_from ToadExceptions::WrongParameter do |e|
      render_error e, status: :unprocessable_entity
    end

    private

    def render_error(e, status: :unprocessable_entity, message: nil)
      Rails.logger.error "ERROR: #{(message || e.message)} \n BACKTRACE: #{e.backtrace}"
      render json: { errors: (message ||e.message) }, status: status
    end
  end
end
