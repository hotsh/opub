require 'net/http'
require 'uri'

require_relative 'publisher'

module OPub
  module Publishers
    def Publishers.new(topic_url, hubs)
      if not defined?(@@instances)
        @@instances = {}
      end

      if @@instances[topic_url] == nil
        sub = OPub::Publisher.new(topic_url, hubs)
        @@instances[topic_url] = sub
      end

      @@instances[topic_url]
    end

    def Publishers.[](topic_url)
      return nil if not defined?(@@instances)
      @@instances[topic_url]
    end
  end
end
