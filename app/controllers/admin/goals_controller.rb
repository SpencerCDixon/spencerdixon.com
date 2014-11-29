class Admin::GoalsController < ApplicationController
  before_filter :authorize!

  def index
    @goals = Goal.all
  end

  def new
    @goal = Goal.new
  end

  def create
    @goal = Goal.new(post_params)
    @goal.user = current_user

    if @goal.save
      redirect_to admin_goals_path
    else
      render 'new'
    end
  end

  private 

  def post_params
    params.require(:goal).permit(:name, :start_date, :due_date, :completed_date)
  end
end
