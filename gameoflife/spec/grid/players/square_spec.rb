require File.expand_path(File.dirname(__FILE__) + "/../../spec_helper")
describe "Square" do
  uses_limelight :scene => "grid", :hidden => true

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
end
