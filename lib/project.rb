class Project
    
    attr_reader :title

    def initialize(title)
        @title = title
    end 

    # creates a new ProjectBacker(project, backer) project and associates it
    # with this (self) project
    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end 

    # return array of projects associated with this instance of Backer
    def backers

        # iterate thru existing list of projects and backers to pull just our current
        # instanced project (self)
        projects_backed = ProjectBacker.all.select do |backed|
            backed.project == self
        end 
        # iterate thru array of backers to current project and remove title
        # while returning an array of just backers
        projects_backed.map do |projects_b|
            projects_b.backer 
        end 
    end 
end 