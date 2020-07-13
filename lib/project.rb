require 'pry'
class Project
  attr_reader :title
  attr_accessor :backers
  @@all = []

  def initialize(title)
    @title = title
    @backers = []
    @@all << self
  end

  def add_backer(backer)
    @backers << backer
    if !(backer.projects.include?(self))
      backer.back_project(self)
    end
  end

  def backers
    @backers
    # binding.pry
  end

end # end of Project class
