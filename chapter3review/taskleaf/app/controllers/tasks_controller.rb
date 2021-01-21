class TasksController < ApplicationController
  def index
	@tasks = Task.all
  end

  def show
	@task = Task.find(params[:id])
  end

  def new
	@task = Task.new
  end

  def create
	task = Task.new(task_params)
	task.save!
	redirect_to(tasks_url, notice: "registered task, [#{task.name}]")
	# flash[:notice] = 'sentence'
	# redirect_to(tasks_url)これと一緒
  end

  def edit
  end

  private

  def task_params
	params.require(:task).permit(:name, :description)
	# パラメータに含まれる"task"キーに対応するバリューを取得し、name, descriptionがあるときだけ取得
  end
end
