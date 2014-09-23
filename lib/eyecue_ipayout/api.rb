require 'eyecue_ipayout/config'
require 'eyecue_ipayout/connection'
require 'eyecue_ipayout/request'

module EyecueIpayout
  class API
    include Connection
    include Request

    attr_accessor *Config::VALID_OPTIONS_KEYS

    # Creates a new API
    def initialize(options={})
      puts "INITIALIZE!!!"
      options = EyecueIpayout.options.merge(options)
      Config::VALID_OPTIONS_KEYS.each do |key|
        send("#{key}=", options[key])
      end
      byebug
    end
  end
end
