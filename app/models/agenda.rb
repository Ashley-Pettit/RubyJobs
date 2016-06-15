class Agenda < ActiveRecord::Base
  # def index
  # end

  def upvote
    @likes = questions.find params[:id]
    @likes.increment! :question_likes
  end


end
