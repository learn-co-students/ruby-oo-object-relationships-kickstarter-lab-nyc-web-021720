require "pry"
class Backer
    
    attr_reader :name

    @@all = []
    def initialize(name)
        @name = name
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
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