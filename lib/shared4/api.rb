
module Shared4
  class Api
    attr_accessor :consumer_key, :consumer_secret
    PUBLIC_BASE_URL = "http://api.4shared.com/v0/files"
    def initialize
      @consumer_key = Rails.application.config.4shared.key
    end

    def method_missing(category, *args)
       
    end
  end
end
