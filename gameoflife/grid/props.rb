grid(:id => "grid") do
  9.downto(0) do |y|
    10.times do |x|
      square :id => "square#{x}#{y}", :text => "#{x},#{y}"
    end
  end
end
