class Backer
    attr_reader :name

    def initialize(name)
        @name = name
    end

    def back_project(project)
        new1 = ProjectBacker.new(project,self)
    end

    def backed_projects
        backed_project = ProjectBacker.all.select do |object|
            object.backer == self
        end
        backed_project.map do |object2|
            object2.project
        end
    end
end