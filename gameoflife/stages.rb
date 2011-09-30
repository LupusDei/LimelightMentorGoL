# This file (stages.rb) is used to define the stages within your production.
#
# Below is an example statge configuration.
#
#  stage "center_stage" do
#    default_scene "main"
#    title "Limelight Center Stage"
#    location [0, 0]
#    size [300, 800]
#  end

stage "grid" do
  default_scene "grid"
  title "Game Of Life"
  location [0, 0]
  size [600, 600]
end
