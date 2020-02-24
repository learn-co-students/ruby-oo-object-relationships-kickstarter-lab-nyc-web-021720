class Project
attr_accessor :title

def initialize(title)
    @title = title
end
def add_backer(backer)
    ProjectBacker.new(self, backer)
end

def backers
   backer1 = ProjectBacker.all.select do |object|
    object.project == self
        end
   backer1.map do |object2|
    object2.backer
        end 
    end
end