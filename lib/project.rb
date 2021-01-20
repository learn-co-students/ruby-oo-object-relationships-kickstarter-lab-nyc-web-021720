class Project 

    attr_reader :title

    def initialize(title)
        @title = title 
    end 

    def add_backer(backer)
     ProjectBacker.new(self, backer)
    end 

    # def backers
    #    ProjectBacker.all.select do | p_b | 
    #     p_b.project == self 
    #    end.map do |p_b |
    #     p_b.backer
    #    end 
    # end 

    def backers
        ProjectBacker.all.map do |p_b|
            if p_b.project == self then
                p_b.backer
            else
                nil
            end
        end.compact
    end

end 