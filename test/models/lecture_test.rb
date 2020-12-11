require 'test_helper'

class LectureTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test 'should not save empty lecture' do
    lecture = Lecture.new
    lecture.save
    refute lecture.valid?
  end

  test 'should save valid lecture' do
    lecture = Lecture.new
    lecture.title = 'My Lecture'
    lecture.weekly_hours = 1
    lecture.description = 'Lecture description'
    lecture.save
    assert lecture.valid?
  end

  test 'should not save duplicate lecture title' do
    lecture1 = Lecture.new
    lecture1.title = 'Lecture'
    lecture1.weekly_hours = 1
    lecture1.description = 'Lecture description'
    lecture1.save
    assert lecture1.valid?

    lecture2 = Lecture.new
    lecture2.title = 'Lecture'
    lecture2.weekly_hours = 1
    lecture2.description = 'Lecture description'
    lecture2.save
    refute lecture2.valid?
  end

end
