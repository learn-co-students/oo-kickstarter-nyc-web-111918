class Backer
  attr_reader :name, :backed_projects

  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @backed_projects = []

    @@all << self
  end

  def back_project(project)
    @backed_projects << project
    project.add_backer(self)
  end

end
