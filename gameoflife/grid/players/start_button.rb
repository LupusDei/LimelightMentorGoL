on_mouse_clicked do
  p = scene.find(id)
  if p.text == "Start"
    Do.notify(:start,{:scene => scene, :sim => scene.production.simulation})
    p.style.background_color = :red
    p.text = "Stop"
  else
    Do.notify(:stop, {:scene => scene, :sim => scene.production.simulation})
    p.style.background_color = :green
    p.text = "Start"
  end
end
