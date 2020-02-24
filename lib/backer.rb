require 'pry'

class Backer

attr_reader :name

    def initialize(name)
        @name = name 
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end 

    def backed_projects
        projects = ProjectBacker.all.select do |pb|
            pb.backer == self 
        end 
        projects.collect do |each_project|
            each_project.project
            # binding.pry 
        end
    end 
end
