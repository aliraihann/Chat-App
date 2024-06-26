class RoomsController < ApplicationController
  def index
    @room = Room.new
    @rooms = Room.public_rooms
    render 'index'

  end

  def show 
    @single_room = Room.find(params[:id])
    @room = Room.new
    @rooms = Room.public_rooms

    @message = Message.new
    @messages = @single_room.messages.order(created_at: :asc)
    render 'index'
  end

  def create 
    @room = Room.create(name: params["room"]["name"])
  end
end
