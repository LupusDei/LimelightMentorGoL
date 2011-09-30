require File.expand_path(File.dirname(__FILE__) + "/../spec_helper")
require File.expand_path(File.dirname(__FILE__) + "/../../lib/do")
describe "Do" do
  
  it "registers an Do" do
    tester = true
    Do.on(:test) do |tester|
      tester = false
    end
    tester.should be_true
    Do.notify(:test, tester)
    tester.should be_false
  end
  
  it "registers for multiple events" do
    tester = true
    Do.on([:test, :again]) {|tester| tester = false}
    tester.should be_true
    Do.notify(:test, tester)
    tester.should be_false
    tester = true
    Do.notify(:again, tester)
    tester.should be_false
  end
  
  it "raises exception if there is nothing registered" do
    lambda{Do.notify(:blahbla)}.should raise_error("No events are registered for blahbla.")
  end
end

