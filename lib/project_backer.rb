class ProjectBacker
    attr_reader :project, :backer

    # class variable array will contain project and backer info
    @@all = []

    def initialize(project, backer)
        @project = project
        @backer = backer
        # put new instance (self) into array
        @@all << self
    end 

    def self.all 
        @@all
    end 

end 