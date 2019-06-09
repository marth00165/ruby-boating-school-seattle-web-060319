class BoatingTest

  @@all = []

  attr_accessor :name , :test_status, :student, :instructor

  def initialize(student,name, test_status, instructor)
    @name = name
    @test_status = test_status
    @student = student
    @instructor = instructor
    @@all << self
  end

  def self.all
    @@all
  end




end
