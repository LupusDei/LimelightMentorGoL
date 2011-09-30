on_mouse_clicked do
  p = scene.find(id)
  if scene.find("start").text == "Start"
    toggle_color(p)
    Do.notify(:toggle, {:sim => scene.production.simulation, :square => p.id})
  end
end

def toggle_color(p)
  if p.style.background_color == "#ffffffff"
    p.style.background_color = :black
  else
    p.style.background_color = :white
  end
end
