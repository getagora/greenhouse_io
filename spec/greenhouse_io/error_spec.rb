require 'spec_helper'

describe GreenhouseIo::Error do

  describe "#inspect" do

    context "when http error code is present" do
      it "creates an error with the code" do
        http_error = GreenhouseIo::Error.new(nil, 404)

        expect(http_error.message).to eq("404")
        expect(http_error.code).to eq(404)
      end
    end

    context "when its an internal gem error" do
      it "creates an error with a message" do
        gem_error = GreenhouseIo::Error.new("organization can't be blank", 422)

        expect(gem_error.message).to eq("organization can't be blank (Status 422)")
        expect(gem_error.code).to eq(422)
      end
    end

    context "when response is set" do
      it "makes response accessible" do
        gem_error = GreenhouseIo::Error.new("organization can't be blank", 422, "response")

        expect(gem_error.response).to eq("response")
      end
    end

  end

end
