require 'pry'
class Backer 
    attr_accessor :name
    def initialize(name)
        @name = name 
    end 
    def back_project(project)
        ProjectBacker.new(project, self)
    end 
    def backed_projects
        #binding.pry 
        project_1 = ProjectBacker.all.select{|pb|pb.backer == self } 
        project_1.map{|p|p.project}
        #binding.pry 
    
        
        
    end 
    
end 