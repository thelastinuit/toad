module Requests
  module JsonHelpers
    def json
      JSON.parse(response.body)
    end

    def headers
      response.headers
    end
  end
end
