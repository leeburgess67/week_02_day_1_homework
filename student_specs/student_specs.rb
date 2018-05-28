require ("minitest/autorun")
require_relative ("../student_class.rb")
require ("minitest/rg")


class StudentTest < MiniTest::Test

  def test_get_name
    student = Student.new("Jimbo", "E20")
    assert_equal("Jimbo", student.get_name())
  end


  def test_get_cohort
    student = Student.new("Jimbo", "E20")
    assert_equal("E20", student.get_cohort())
  end

  def test_set_name
    student = Student.new("Jimbo", "E20")
    student.set_name("Bob")
    assert_equal("Bob", student.get_name())
  end

  def test_set_cohort
    student = Student.new("Jimbo", "E20")
    student.set_cohort("G5")
    assert_equal("G5", student.get_cohort())
  end

  def test_can_talk
    student = Student.new("Jimbo", "E20")
    assert_equal("I can talk!", student.can_talk)
  end


  





















end
