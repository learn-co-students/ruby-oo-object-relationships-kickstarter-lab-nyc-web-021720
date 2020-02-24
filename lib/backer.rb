require "pry"

class Backer
    attr_accessor :name

    def initialize(name)
        @name = name
    end

    def back_project(project)
        #binding.pry
        ProjectBacker.new(project, self)
        #binding.pry
    end

    def backed_projects
        backers = ProjectBacker.all.select do |project_obj|
            project_obj.backer == self
        end
        backers.map do |obj|
            obj.project
        end
    end

end