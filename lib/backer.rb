class Backer
    attr_accessor :name 
    def initialize(name)
      @name = name 
    end
    
    def back_project(project)
        new_project = ProjectBacker.new(project,self)
        new_project
    end 

    def backed_projects
       x= ProjectBacker.all.select{|elem| elem.backer == self}
       x.map{|elem| elem.project}
    end 

end 