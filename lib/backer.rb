require 'pry'

class Backer

    attr_accessor :name

    def initialize (name)
        @name = name
    end

    def back_project(project)
        projbacker = ProjectBacker.new(project, self)
    end

    def backed_projects
        narrowedprojects = ProjectBacker.all.select do |projbacker|
            projbacker.backer == self
        end
        narrowedprojects.map do |projects|
            projects.project
        end
    end



end