class Instructor

  attr_accessor :teach_name

  def initialize(teach_name)
    @teach_name = teach_name
  end

  def pass_student(student, testName)


    testing = ""
    BoatingTest.all.each do |test|
      if test.student == student && test.name == testName
        test.test_status = "passed"
        testing = test


      else
        testing = student.add_boating_test(testName, "passed" , self)


      end
    end

    testing


  end

  def fail_student(student, testName)
      testing = ""
      BoatingTest.all.each do |test|
      if test.student == student && test.name == testName
        test.test_status = "fail"
        testing = test
      else
        testing = student.add_boating_test(testName, "failed", self)
      end
    end

    testing
  end



end
