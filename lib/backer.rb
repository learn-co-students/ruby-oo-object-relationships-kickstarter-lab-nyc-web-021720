require 'pry'
class Backer

    attr_reader :name

    def initialize(name)
        @name = name
    end 

    # creates a new ProjectBacker(project, backer) project and associates it
    # with this (self) backer
    def back_project(project)
        ProjectBacker.new(project, self)
    end 

    # return array of projects associated with this instance of Backer
    def backed_projects

        # iterate thru existing list of projects and backers to pull just our current
        # instanced backer (self)
        projects_backed = ProjectBacker.all.select do |backed|
            backed.backer == self
        end 
        # iterate thru array of projects backed by current user and remove user info
        # while returning an array of just project titles
        projects_backed.map do |projects_b|
            projects_b.project 
        end 
    end 
end 