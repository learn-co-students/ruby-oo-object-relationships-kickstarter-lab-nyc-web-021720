class Backer 
    attr_reader :name
    def initialize(name)
        @name = name
    end

    def back_project(project)
        temp = ProjectBacker.new(project,self)
    end

    def backed_projects
        backed_project = ProjectBacker.all.select do |obj|
            obj.backer == self
        end

        backed_project.map do |obj2|
            obj2.project
        end
        

    end


end