require 'spec_helper'
require File.expand_path("../../../lib/david_json", __FILE__)

RSpec.describe DavidJSON do
  describe "integers" do
    it "parses 1" do
      expect(DavidJSON.parse("1")).to eq 1
    end

    it "parses 2" do
      expect(DavidJSON.parse("2")).to eq 2
    end

    it "parses 3" do
      expect(DavidJSON.parse("3")).to eq 3
    end

    it "parses 42" do
      expect(DavidJSON.parse("42")).to eq 42
    end
  end

  describe "an array" do
    it "parses an empty array" do
      expect(DavidJSON.parse("[]")).to eq []
    end

    it "parses a single-integer array" do
      expect(DavidJSON.parse("[1]")).to eq [1]
    end
  end

  describe "a nil value" do
    it "returns nil" do
      expect(DavidJSON.parse(nil)).to eq nil
    end
  end

  describe "invalid JSON" do
    context "string is empty" do
      it "raises an exception" do
        expect { DavidJSON.parse("") }.to raise_error InvalidJSONError
      end
    end
  end
end
