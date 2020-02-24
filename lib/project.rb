class Project
    attr_accessor :title
    
    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers
        backers = ProjectBacker.all.select do |project_obj|
            project_obj.project == self
        end
        backers.map do |obj|
            obj.backer
        end
    end
end