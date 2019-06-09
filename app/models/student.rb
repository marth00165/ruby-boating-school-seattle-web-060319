class Student
  @@all = []
  attr_accessor :first_name

  def initialize(first_name)
    @first_name = first_name
    @@all << self
  end

  def self.all
    @@all
  end

  def add_boating_test(test_name, test_status, instructor)

  BoatingTest.new(self,test_name, test_status, instructor)

  end

  def self.find_student(first_name)
    self.all.find do |student|
      student.first_name.casecmp(first_name) == 0
    end
  end

  def grade_percentage

    studentTests = BoatingTest.all.find_all{|test| test.student.first_name == self.first_name}
    total = studentTests.length.to_f
    passed = studentTests.find_all{|test| test.test_status == "passed"}
    passedTotal = passed.length.to_f
    percent = (passedTotal/total)
  end

  end
