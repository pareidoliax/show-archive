class AttendsController < ApplicationController
  def new
    @attend = Attend.new
  end

  def create
    @attend = current_user.attends.build(attend_params)

    if @attend.save
      session[:user_id] = @user.id
      redirect_to user_url, notice: "Attendance added!"
    else
      render "new"
    end
  end

  private

  def attend_params
    params.require(:attend).permit(:rating, :review, 
      event_attributes: [:artist, :venue, :date, :name])
  end
end
