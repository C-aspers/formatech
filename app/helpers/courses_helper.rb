module CoursesHelper

  def find_comment
    comment_array = []
    comment_array = Comment.all.select { |m| m.course_id == 2 }
  end

end

