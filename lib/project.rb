class Project 
    attr_reader :title
    @@all = []
def initialize(title)
    @title = title
end

def add_backer(backer)
    ProjectBacker.new(self, backer)
end

def backers
    backers = ProjectBacker.all.select do |obj| 
        obj.project == self    
        end
        backers.map do |obj| obj.backer  
        end
end

def self.all
    @@all
end
end

# book = Project.new('Ruby, Ruby, and More Ruby')
#     magic = Project.new('Magic The Gathering Thing')
#     karaoke = Project.new('Karaoke')
# binding.pry
'backer pry'