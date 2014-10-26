require "spec_helper"

describe Rack::BodyDeserializer::VERSION do
  it "should be a string" do
    expect(Rack::BodyDeserializer::VERSION).to be_kind_of(String)
  end
end
