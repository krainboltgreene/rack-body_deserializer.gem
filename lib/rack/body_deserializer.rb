module Rack
  class BodyDeserializer
    require_relative "body_deserializer/version"
    RACK_KEY = "rack.deserialized.body"
    INPUT_KEY = "rack.input"
    TYPE_KEY = "CONTENT_TYPE"

    attr_reader :mapping
    private :mapping

    def initialize(stack, mapping)
      @stack = stack
      @mapping = mapping
    end

    def call(previous_state)
      @state = previous_state
      if content_type && stringable?
        state[RACK_KEY] = deserializer.load(input)
      end
      stack.call(state)
    end

    private def input
      state[INPUT_KEY].string
    end

    private def content_type
      state[TYPE_KEY]
    end

    private def deserializer
      mapping[content_type]
    end

    private def stringable?
      state[INPUT_KEY].respond_to?(:string)
    end

    private def stack
      @stack
    end

    private def state
      @state
    end

    private def headers
      @headers
    end

    private def status
      @status
    end

    private def body
      @body
    end
  end
end
