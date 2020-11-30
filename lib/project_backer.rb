require_relative "./backer.rb"
require_relative "./project.rb"
require "pry"

class ProjectBacker
    attr_reader :project, :backer
  
    @@all = []

    def initialize(project,backer)
        @project = project
        @backer = backer   
        @@all << self
        #binding.pry
    end

    def self.all 
        @@all
    end 


end

johnson = Backer.new("Johnson")
project1 = Project.new("kickstarter")
puts donation = ProjectBacker.new(project1, johnson)
# binding.pry
