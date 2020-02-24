class Project 
    attr_reader :title 
    def initialize(title) 
        @title = title 
    end 
    def add_backer(backer)
        ProjectBacker.new(self,backer)

    end 
    def backers
        
        
        
        
        
        project_1 = ProjectBacker.all.select{|pb|pb.project == self } 
        project_1.map{|p|p.backer}
        # #binding.pry 
    
        
        
    end 
end 