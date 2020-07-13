require 'pry'
class Project
  attr_accessor :backers, :title



  def initialize (title)
    @title = title
    @backers = []

  end

  def add_backer (backer)
    @backers << backer
    #using backed_projects to avoid a loop that will occure if the back_project method is used
    backer.backed_projects.push(self)
    #binding.pry
  end




end
