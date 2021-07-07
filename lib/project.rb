class Project

  attr_accessor :title 

  def initialize(title)
    @title = title
  end

  def add_backer(backer)
    ProjectBacker.new(self, backer)
  end

  def backed_projects
    ProjectBacker.all.map do |project| 
      project.project == self 
    end
  end

  def backers
    project_backers = ProjectBacker.all.select do |project| 
      project.project == self 
    end

    project_backers.map do |pb|
      pb.backer
    end
  end

end

