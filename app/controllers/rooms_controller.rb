class RoomsController < ApplicationController
  def show
    @messages = Message.all
  end

  def destroy
    @message = Message.find(params[:id])
    @message.destroy
    redirect_to room_path
  end
end
