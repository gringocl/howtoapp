class StepsController < ApplicationController
  before_action :set_step, only: [:show, :edit, :update, :destroy]

  def index
    @steps = Step.all
  end

  def show
  end

  def new
    @step = Step.new
  end

  def edit
  end

  def create
    @step = Step.new(step_params)
      if @step.save
        redirect_to @step, notice: 'Step was successfully created.'
      else
        render action: 'new'
      end
  end

  def update
    if @step.update(step_params)
      redirect_to @step, notice: 'Step was successfully updated.'
    else
      render action: 'edit'
    end
  end

  def destroy
    @step.destroy
    redirect_to steps_url
  end

  private
    def set_step
      @step = Step.find(params[:id])
    end

    def step_params
      params[:step]
    end
end
