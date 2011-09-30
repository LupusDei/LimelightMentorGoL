Do.on(:running) do |options|
  scene = options[:scene]
  sim = scene.production.simulation
  scene.production.update_thread = Thread.new {
    Thread.current["running"] = true
    while Thread.current["running"] do
      sleep(0.5)
      sim.dirty.each do |square|
        id = "square" + square
        toggle_color(scene.find(id))
      end
      sim.clean_all
    end
  }
end

Do.on(:halted) do |options|
  scene = options[:scene]
  scene.production.update_thread["running"] = false
end


def toggle_color(p)
  if p.style.background_color == "#ffffffff"
    p.style.background_color = :black
  else
    p.style.background_color = :white
  end
end
