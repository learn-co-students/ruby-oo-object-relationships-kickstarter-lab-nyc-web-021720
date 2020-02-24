class Project
    attr_accessor :title 
    def initialize(title)
        @title = title 
    end

    def add_backer(backer)
        ProjectBacker.new(self,backer)
    end

    def backers
        x= ProjectBacker.all.select{|elem| elem.project == self}
        x.map{|elem| elem.backer}
     end 
 
end