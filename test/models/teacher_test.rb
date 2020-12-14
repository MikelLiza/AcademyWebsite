require 'test_helper'

class TeacherTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test 'should not save empty teacher' do
    teacher = Teacher.new
    teacher.save
    refute teacher.valid?
  end

  test 'should save valid teacher' do
    teacher = Teacher.new
    teacher.name = 'My teacher'
    teacher.lastName = 'LastName'
    teacher.dob = '01/01/2001'
    teacher.tchyears = 5
    teacher.description = 'text'
    teacher.email = 'teacher@email'
    teacher.save
    assert teacher.valid?
  end

  test 'should not save duplicate teacher email' do
    teacher1 = Teacher.new
    teacher1.name = 'My teacher'
    teacher1.lastName = 'LastName'
    teacher1.dob = '01/01/2001'
    teacher1.tchyears = 5
    teacher1.description = 'text'
    teacher1.email = 'teacher1@email'
    teacher1.save
    assert teacher1.valid?

    teacher2 = Teacher.new
    teacher2.name = 'My teacher'
    teacher2.lastName = 'LastName'
    teacher2.dob = '01/01/2001'
    teacher2.tchyears = 5
    teacher2.description = 'text'
    teacher2.email = 'teacher1@email'
    teacher2.save
    refute teacher2.valid?
  end
end
