class Backer

attr_reader :name 

 def initialize(name)   
    @name = name
 end 

 def back_project(project)
    ProjectBacker.new(project, self)
 end   

 def backed_projects
   ProjectBacker.all.select do | p_b|
    p_b.backer == self 
   end.map do | p_b |
     p_b.project 
   end
end 



end    