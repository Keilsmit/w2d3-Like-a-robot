#!/usr/bin/env ruby

require 'erb'

class Robot

  attr_accessor :name
  #               :height
  #
  # def initialize(height=10)
  #   self.height = height
  # end

  def initialize(name)
    self.name = name
  end

  def say_hi
    "Hi!"
  end
    # say_hi method ends here
  def say_name
    "my name is #{self.name}"
  end
    # say_name method End here
end
# <!-- End of robot class -->

class BendingUnit < Robot

  def bend(object_to_bend)
     "Bend #{object_to_bend}"
  end
      # Bend method ends here
end
# <!-- End of Bending class -->

class ActorUnit < Robot
  def change_names(new_name)
    self.name = new_name
  end
  # <!-- change_names ends here -->

end
# <!-- End of Actor class -->


robot = BendingUnit.new(ARGV[0])

object = ARGV[1]


our_class = ["Keith", "Jon", "Luis", "Chris", "Mike", "Brent", "Zachary"]



new_file = File.open("./#{ARGV[0]}.html", "w+")
new_file << ERB.new(File.read("index.html.erb")).result(binding)
new_file.close
