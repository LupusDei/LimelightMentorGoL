require 'rubygems'
require 'spec'
require File.expand_path(File.dirname(__FILE__) + "/../../../limelight/lib/limelight/specs/spec_helper")
require File.expand_path(File.dirname(__FILE__) + "/../../../limelight/lib/limelight/mouse")

# Set the Gem home to the frozen gems
$PRODUCTION_PATH = File.expand_path(File.dirname(__FILE__) + "/../")
Gem.use_paths(File.join($PRODUCTION_PATH , "__resources", "gems"), Gem.default_path)

$: << File.expand_path(File.dirname(__FILE__) + "/../lib")

Dir.glob(File.join( "**", "lib", "grid")).each do |dir|
  $: << dir
end

def click(scene_id)
  @mouse = Limelight::Mouse.new
  @mouse.click(scene.find(scene_id))
end

