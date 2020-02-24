class Project
    attr_accessor :title
    def initialize (title)
        @title = title
    end
    def add_backer(backer)
        projbacker = ProjectBacker.new(self, backer)
    end
    def backers
        narrowedprojects = ProjectBacker.all.select do |projbacker|
            projbacker.project == self
        end
        narrowedprojects.map do |backers|
            backers.backer
        end
    end
end