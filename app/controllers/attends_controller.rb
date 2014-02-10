class AttendsController < ApplicationController
  def new
    @attend = Attend.new
    event = @attend.events.build
    event.artists.build
    event.venues.build
  end

  def create
    @attend = current_user.attends.build(attend_params)

    if @attend.save
      session[:user_id] = User.find(session[:user_id])
      redirect_to user_url(current_user), notice: "Attendance added!"
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
