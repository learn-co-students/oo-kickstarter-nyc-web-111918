class Backer

  attr_accessor :name, :backed_projects

  def initialize(name)
    @name = name
    @backed_projects = []
  end

  def back_project(project)
    @backed_projects << project
    # adds the backer to the project's backers array
    project.backers << self
  end

end # end of Backer class
