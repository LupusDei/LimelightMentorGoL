require File.expand_path(File.dirname(__FILE__) + "/../spec_helper")
require File.expand_path(File.dirname(__FILE__) + "/../../lib/simulation")

describe "Simulation" do

  it "has a grid of squares" do
    sim = Simulation.new
    sim.grid[0][0].should == 0
    sim.grid[9][9].should == 0
  end

  it "can toggle a square" do
    sim = Simulation.new
    sim.toggle_square(5,5)
    sim.grid[5][5].should == 1
    sim.toggle_square(5,5)
    sim.grid[5][5].should == 0
  end

  it "knows which squares are dirty" do
    sim = Simulation.new
    sim.toggle_square(5,5)
    sim.dirty.last.should == "55"
  end

  it "can clean the dirty squares" do
    sim = Simulation.new
    sim.toggle_square(5,5)
    sim.clean_all
    sim.dirty.should be_empty
  end

  it "can run" do
    #this is where the game comes in
  end

  it "can halt the run loop" do
    sim = Simulation.new
    sim.running_thread = mock("Thread")
    sim.running_thread.should_receive(:[]=).with("run",false)
    sim.halt
  end

end
