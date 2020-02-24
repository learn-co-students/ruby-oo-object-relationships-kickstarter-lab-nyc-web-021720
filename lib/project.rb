class Project 
    attr_reader :title
    def initialize(title)
        @title = title
    end


    def add_backer(backer)
    
        temp = ProjectBacker.new(self,backer)

    end
    def backers
        backs = ProjectBacker.all.select do |obj|
            obj.project == self
        end
        backs.map do |obj2|
            obj2.backer
        end


    end


end