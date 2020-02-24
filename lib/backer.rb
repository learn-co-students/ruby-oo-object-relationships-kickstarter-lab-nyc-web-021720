class Backer
    attr_accessor :name
    def initialize(name)
      @name = name
    end
    def back_project(project)
        new_project = ProjectBacker.new(project,self)
        new_project
    end
    def backed_projects
       pb_arr = ProjectBacker.all.select{|pb_obj| pb_obj.backer == self}
       pb_arr.map{|pb_obj| pb_obj.project}
    end
end