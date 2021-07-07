class Backer
    attr_accessor :name
    
    def initialize(name)
        @name = name
    end

    def back_project(project_title)
        ProjectBacker.new(project_title, self)
    end

    def backed_projects
        backed_projects = ProjectBacker.all.select do |project_backer|
            project_backer.backer == self
        end
        backed_projects.map do |projects|
            projects.project
        end
    end
end