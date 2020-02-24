class Project
    attr_accessor :title
   
    def initialize(title)
        @title = title
    end

    def add_backer(backer_name)
        ProjectBacker.new(self, backer_name)
    end

    def backers
      backers = ProjectBacker.all.select do |project_object|
        project_object.project == self
      end
      backers.map do |backer_object|
        backer_object.backer
      end
    end
end