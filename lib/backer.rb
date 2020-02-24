class Backer
    attr_accessor :name
    def initialize(name)
        @name = name
    end
    def back_project(project)
        ProjectBacker.new(project, self)
    end
    def backed_projects
        backer_with_project= ProjectBacker.all.select do |project_backer|
            project_backer.backer == self 
        end 
        backer_with_project.map do |backer_projects|
            backer_projects.project
        end
    end 
 
end



# With back_project set up, the final step for the Backer class is to 
# build an instance 
# method that returns all the projects associated with this Backer instance. 
# Since Project instances are not directly associated with Backer instances, 
# you will need to 
# get this information _through the ProjectBacker class.