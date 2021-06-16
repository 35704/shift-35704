class ShiftsController < ApplicationController

  def index
    @shifts = Shift.all
  end

  def new
    @shift = Shift.new
  end

  def create
    @shift = Shift.new(shift_params)
    @shift.save
    redirect_to root_path
  end

  def show
    @shift = Shift.find(params[:id])
  end

  private

  def shift_params
    params.require(:shift).permit(:title, :content, :start_time).merge(user_id: current_user.id)
  end

end
