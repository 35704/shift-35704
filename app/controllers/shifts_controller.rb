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
    @shift
  end

  private

  def shift_params
    params.require(:shift).permit(:title, :content, :start_time)
  end

end
