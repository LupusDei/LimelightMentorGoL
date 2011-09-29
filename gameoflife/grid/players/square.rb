on_mouse_clicked do
  p = scene.find(id)
  if p.style.background_color == "#ffffffff"
    p.style.background_color = :black
  else
    p.style.background_color = :white
  end
end
