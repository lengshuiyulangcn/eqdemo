class RoomsController < ApplicationController
  def index
	  @rooms=Rooms.all
	  @equipments=Equipment.where(:room_id=> @rooms.first.id)
  end
end
