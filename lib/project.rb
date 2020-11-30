require 'pry'
class Project 
    attr_accessor :title

    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers
        new_array = ProjectBacker.all.select do |project_obj|
            project_obj.project == self
        end
        new_array.map do |new_array_obj|
            new_array_obj.backer
        end
    end
end 