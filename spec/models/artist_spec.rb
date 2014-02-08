require 'spec_helper'

describe Artist do
  describe "#users_attended" do
    before :each do
      artist = create(:artist)
      event = create(:event)
      venue = create(:venue)
      attend = nil
      @u0 = create(:user) do |user|
        attend = user.attends.build(attributes_for(:attend))
        attend.artist = artist
        attend.event = event
        attend.venue = venue
        attend.save
      end

      @u1 = create(:user, username: "cutman32") do |user|
        attend = user.attends.build(attributes_for(:attend))
        attend.artist = artist
        attend.event = event
        attend.venue = venue
        attend.save
      end

      @u2 = create(:user, username: "tingle54") do |user|
        attend = user.attends.build(attributes_for(:attend))
        attend.artist = artist
        attend.event = event
        attend.venue = venue
        attend.save
      end
    end

    it "should return users that has seen the artist" do
      Artist.users_attended(artist).should eq([@u0, @u1, @u2])
    end
  end
end

