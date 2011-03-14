require 'net/http'
require 'uri'

module OPub
  class Publisher
    def initialize(topic_url, hubs)
      @topic_url = topic_url
      @hub_urls = hubs
    end

    def ping_hubs
      @hub_urls.each do |hub_url|
        res = Net::HTTP.post_form(URI.parse(hub_url),
                                  { 'hub.mode' => 'publish',
                                    'hub.url' => @topic_url })
      end
    end
  end
end
