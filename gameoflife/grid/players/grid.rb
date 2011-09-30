on_scene_opened do
  require "do"
  Dir.glob(File.expand_path(File.dirname(__FILE__) + "/../observers/*.rb")).each { |file| require file}
end
