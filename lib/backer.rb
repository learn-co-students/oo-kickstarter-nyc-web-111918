require 'pry'
class Backer
  attr_reader :name
  attr_accessor :projects
  @@all = []

  def initialize(name)
    @name = name
    @projects = []
    @@all << self
  end

  def back_project(project)
    @projects << project
    if !(project.backers.include?(self))
      project.add_backer(self)
    end
  end

  def backed_projects
    @projects
  end

end # end of Backer class
