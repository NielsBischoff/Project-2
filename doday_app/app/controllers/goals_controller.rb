class GoalsController < ApplicationController

    def show
      @goal = Goal.find(params[:id])
    end

    def new
      @goal = Goal.new
    end

    def create
      @goal = Goal.new(user_params)
      if @goal.save
        redirect_to @task
        flash[:success] = "You defined a goal on your path to success!"
        redirect_to @goal
      else
        render 'new'
      end
    end

    def edit
      @goal = Goal.find(params[:id])
    end

    private

      def user_params
        params.require(:goal).permit(:task_description, :time_frame, :priority, :completed)
      end
end
