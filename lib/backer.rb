require "pry"

class Backer 
    attr_accessor :name

    def initialize(name)
        @name = name 
    end
    
    def back_project(project)
        ProjectBacker.new(project, self)
        # binding.pry
    end

    def backed_projects
        #ProjectBacker.new(Project, self)
        new_array = ProjectBacker.all.select do |project_obj|
            project_obj.backer == self
            # binding.pry
        end
        new_array.map do |new_array_object|
            new_array_object.project
        end
    end
end 