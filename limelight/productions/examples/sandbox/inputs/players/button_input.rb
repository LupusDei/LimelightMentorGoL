#- Copyright � 2008-2009 8th Light, Inc. All Rights Reserved.
#- Limelight and all included source files are distributed under terms of the GNU LGPL.

on_cast do
  puts "BUTTON INOPUT EXTENDED"
end

on_key_pressed do |e|
  print("#{e.key_code} pressed")
end

on_char_typed do |e|
  print("#{e.char} typed")
end

on_key_released do |e|
  print("#{e.key_code} released")
end

on_focus_gained do
  print("gained focused")
end

on_focus_lost do
  print("lost focus")
end

on_button_pushed do
  @presses += 1 if @presses
  @presses = 1 if @presses.nil?
  print("pressed")
end

def print(value)
  log = scene.find("button_log")
  log.text += value + "\n"
  log.update

  results = scene.find("button_results")
  results.text = "Pressed #{@presses} time(s)."
  results.update
end
