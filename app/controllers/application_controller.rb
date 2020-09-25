class ApplicationController < ActionController::API
  include RescueError
  include Pagy::Backend

  after_action { pagy_headers_merge(@pagy) if @pagy }
end
