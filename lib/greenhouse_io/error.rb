require 'pry'
module GreenhouseIo
  class Error < StandardError
    attr_reader :code

    def initialize(message = nil, code = nil)
      @message = message
      @code = code
    end

    def message
      if @message.nil?
        @code.to_s
      else
        display_code = @code.nil? ? "" : " (Status #{@code})"
        "#{@message}#{display_code}"
      end
    end
  end
end
