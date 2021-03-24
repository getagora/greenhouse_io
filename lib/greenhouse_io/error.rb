require 'pry'
module GreenhouseIo
  class Error < StandardError
    attr_reader :code, :response

    def initialize(message = nil, code = nil, response = nil)
      @message = message
      @code = code
      @response = response
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
