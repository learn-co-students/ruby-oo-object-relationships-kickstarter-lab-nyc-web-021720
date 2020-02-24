class Backer

  attr_accessor :name 

  def initialize(name)
    @name = name
  end

  def back_project(project)
    ProjectBacker.new(project, self)
  end

  def backed_projects
    # project_backers = ProjectBacker.all.select do |project| 
    #   project.backer == self 
    # end

    ProjectBacker.all.map do |pb|
      if pb.backer == self 
        pb.project 
      end
    end
  end

end