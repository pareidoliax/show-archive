class AttendsController < ApplicationController
  def new
    @attend = Attend.new
    @event = @attend.events.build
    @artist = @event.artist.build
    @venue = @event.venue.build
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
    params.require(:attend).permit(:rating, :review, :event_id,
      event_attributes: [ :artist_id, :venue_id, :date, :name])
  end
end
