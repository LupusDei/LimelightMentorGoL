grid(:id => "main") do
  grid_container(:id => "grid") do
    9.downto(0) do |y|
      10.times do |x|
        square :id => "square#{x}#{y}"
      end
    end
  end
  button_frame do
    start_button :id => "start", :text => "Start"
  end
end
