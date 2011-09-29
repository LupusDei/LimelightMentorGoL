require File.expand_path(File.dirname(__FILE__) + "/../../spec_helper")

describe "Square Props in the Grid" do
  uses_limelight :scene => "grid", :hidden => true

  def find_prop(id)
    @prop = scene.find(id)
    @prop.should_not be_nil
  end

  it "has at least 1 square" do
    find_prop("square00")
  end

  it "has many squares" do
    find_prop("grid")
    @prop.children.size.should > 10
  end

  #0,0 is in the bottom left square
  it "forms a grid with 100 squares named 'squareXY'" do
    find_prop("square00")
    find_prop("square55")
    find_prop("square99")
  end

  it "the squares begin as white" do
    find_prop("square15")
    @prop.style.background_color.should == "#ffffffff"
  end
end
