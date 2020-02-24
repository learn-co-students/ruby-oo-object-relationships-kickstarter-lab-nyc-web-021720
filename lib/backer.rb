require "pry"
class Backer
    
    attr_reader :name

    @@all = []
    def initialize(name)
        @name = name
    end

    def back_project(project)
        # this is how you connect the many-to-many classes via conector
        ProjectBacker.new(project, self)
    end

    def backed_projects
        # returned an array of the projecst associated with each backer. 
        # had to look at ProjectBacker iterate through self and then iterate through the array you made the first time. 
        b_p = ProjectBacker.all.select do |obj| 
            obj.backer == self    
            end
            b_p.map do |obj| obj.project  
            end
    end

    def self.all
        @@all
    end
end

# steven = Backer.new('Steven')
# spencer = Backer.new('Spencer')
# meryl = Backer.new('Meryl')
# binding.pry
'hellooooo'