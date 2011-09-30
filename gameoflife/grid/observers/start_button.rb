Do.on(:start) do |options|
  sim = options[:sim]
  sim.run
  Do.notify(:running, options)
end

Do.on(:stop) do |options|
  sim = options[:sim]
  sim.halt
  Do.notify(:halted, options)
end
