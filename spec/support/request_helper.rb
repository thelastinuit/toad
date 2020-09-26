module Requests
  module JsonHelpers
    def json
      JSON.parse(response.body)
    end

    def pagy_metadata
      json['pagy']
    end

    def headers
      response.headers
    end
  end
end
