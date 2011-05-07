require 'spec_helper'

describe ApiHit do

  let(:api_hit) do
    ApiHit.new(:service => "tumblr")
  end

  it "should return service" do
    api_hit.service.should == "tumblr"
  end

  it "should return start time" do
    api_hit.start_time.should be_an(Time)
  end

  it "should not return end time" do
    api_hit.end_time.should be_nil
  end

  it "should return end time after save" do
    api_hit.save
    api_hit.end_time.should be_an(Time)
  end
end
