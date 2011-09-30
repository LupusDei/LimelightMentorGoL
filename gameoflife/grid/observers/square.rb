Do.on(:toggle) do |options|
  sim = options[:sim]
  square = options[:square]
  x = square.match(/(\d)(\d)/)[1].to_i
  y = square.match(/(\d)(\d)/)[2].to_i
  sim.toggle_square(x,y)
end
