class Backer
    attr_accessor :name
    def initialize(name)
        @name = name
    end
    
    def back_project(project)
      ProjectBacker.new(project, self)
    end

    def backed_projects
      project1 = ProjectBacker.all.select do |object|
        object.backer == self
      end
        
      project1.map do |object2|
        object2.project
        
      end
    end
end
