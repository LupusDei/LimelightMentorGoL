require File.expand_path(File.dirname(__FILE__) + "/../../spec_helper")

describe "Start Button" do
  uses_limelight :scene => "grid", :hidden => true

  before do
    scene.production.simulation = mock("sim", :null_object => true)
  end

  it "changes color to red when pressed" do
    prop = scene.find("start")
    prop.style.background_color.should == "#00ff00ff"
    click prop.id
    prop.style.background_color.should == "#ff0000ff"
  end

  it "changes back to green when clicked again" do
    prop = scene.find("start")
    prop.style.background_color.should == "#00ff00ff"
    click prop.id
    click prop.id
    prop.style.background_color.should == "#00ff00ff"
  end

  it "says 'Stop' after it has been clicked once" do
    prop = scene.find("start")
    prop.text.should == "Start"
    click prop.id
    prop.text.should == "Stop"
  end

  it "says 'Start' again after it has been clicked twice" do
    prop = scene.find("start")
    prop.text.should == "Start"
    click prop.id
    click prop.id
    prop.text.should == "Start"
  end
end
