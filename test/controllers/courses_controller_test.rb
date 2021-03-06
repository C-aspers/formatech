require 'test_helper'

class CoursesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @course = courses(:one)
  end

  test "should get index" do
    get courses_url
    assert_response :success
  end

  test "should get new" do
    get new_course_url
    assert_response :success
  end

  test "should create course" do
    assert_difference('Course.count') do
      post courses_url, params: { course: { adress: @course.adress, description: @course.description, duration: @course.duration, duration_scale: @course.duration_scale, has_diploma: @course.has_diploma, image_url: @course.image_url, is_remote: @course.is_remote, price: @course.price, start_date: @course.start_date, title: @course.title, zip_code: @course.zip_code } }
    end

    assert_redirected_to course_url(Course.last)
  end

  test "should show course" do
    get course_url(@course)
    assert_response :success
  end

  test "should get edit" do
    get edit_course_url(@course)
    assert_response :success
  end

  test "should update course" do
    patch course_url(@course), params: { course: { adress: @course.adress, description: @course.description, duration: @course.duration, duration_scale: @course.duration_scale, has_diploma: @course.has_diploma, image_url: @course.image_url, is_remote: @course.is_remote, price: @course.price, start_date: @course.start_date, title: @course.title, zip_code: @course.zip_code } }
    assert_redirected_to course_url(@course)
  end

  test "should destroy course" do
    assert_difference('Course.count', -1) do
      delete course_url(@course)
    end

    assert_redirected_to courses_url
  end
end
