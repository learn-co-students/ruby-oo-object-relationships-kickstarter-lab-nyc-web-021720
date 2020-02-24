class Project
    attr_reader :title

    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        new2 = ProjectBacker.new(self,backer)
    end

    def backers
        backers = ProjectBacker.all.select do |object1|
            object1.project == self
        end
        backers.map do |object2|
            object2.backer
        end
    end
end
