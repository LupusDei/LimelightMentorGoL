require File.expand_path(File.dirname(__FILE__) + "/../../spec_helper")
describe "Square" do
  uses_limelight :scene => "grid", :hidden => true

  before do
    scene.production.simulation = mock("sim", :null_object => true)
  end

  it "changes color to black when clicked once" do
    prop = scene.find("square00")
    prop.style.background_color.should == "#ffffffff"
    click prop.id
    prop.style.background_color.should_not == "#ffffffff"
  end

  it "changes back to white when clicked twice" do
    prop = scene.find("square00")
    prop.style.background_color.should == "#ffffffff"
    click prop.id
    click prop.id
    prop.style.background_color.should == "#ffffffff"
  end

  it "doesn't change if the simulation is running" do
    start = scene.find("start")
    click start.id
    prop = scene.find("square00")
    prop.style.background_color.should == "#ffffffff"
    click prop.id
    prop.style.background_color.should == "#ffffffff"
  end
end
