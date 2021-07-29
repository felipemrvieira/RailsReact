class SolutionsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_solution, only: [:index, :data]

  def index
    if @solutions.length > 0
      redirect_to solutions_data_path
    else
      render 'index'
    end
  end

  def show
    @solution = Solution.find(params[:id])
  end

  def data
  end

  # def upload
  #   csv_file = File.join Rails.root, 'db', 'medidas.csv'
  #   AddSolutionWorker.perform_async(csv_file)
  #   redirect_to solutions_data_path, notice: 'solutions have been uploaded!'
  # end

  def upload
    xlsx_file = File.join Rails.root, 'db', 'medidas.xlsx'
    AddSolutionWorker.perform_async(xlsx_file)
    redirect_to solutions_data_path, notice: 'solutions have been uploaded!'
  end

  def destroy
    RemoveSolutionWorker.perform_async
    redirect_to root_path
  end

  private

    def set_solution
      @solutions = Solution.all
    end

end
