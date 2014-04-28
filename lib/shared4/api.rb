module Shared4
  class Api
    attr_accessor :consumer_key, :consumer_secret
    PUBLIC_BASE_URL = "http://api.4shared.com/v0/files.json"
    NAME_CATEGORY = {
                      music: 1, video: 2, photo: 3, archive: 4,
                      book: 5, program: 6, web: 7, mobile: 8,
                      game: 9, android: 10
                    }
    def initialize(consumer_key = nil)
      @consumer_key = consumer_key || Rails.application.config.shared4.key
    end
      

    def method_missing(category_name, opts={})
      category_code = NAME_CATEGORY[category_name.to_sym]

      data = if opts[:q]
               ::RestClient.get  "#{PUBLIC_BASE_URL}", {oauth_consumer_key: @consumer_key, category: category_code, query: opts[:q]}
             else
               ::RestClient.get  "#{PUBLIC_BASE_URL}", {oauth_consumer_key: @consumer_key, category: category_code}
             end           
    end


  end
end
