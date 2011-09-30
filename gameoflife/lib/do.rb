class Do
  @@observers = {}
  def self.on(action_names, &block)
    action_names = [action_names] if action_names.class != Array  
    action_names.each do |action_name|  
      @@observers[action_name] = [] if @@observers[action_name].nil?
      @@observers[action_name] << block
    end
  end

  def self.notify(action_name, *args)
    raise "No events are registered for #{action_name}." if @@observers[action_name].nil? || @@observers[action_name].empty?
    @@observers[action_name].each {|observer| observer.call(*args)}
  end
  
end

