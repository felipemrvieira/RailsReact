require 'fileutils'

class SolutionsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_solution, only: [:index, :data]

  def index
    # if @solutions.length > 0
    #   redirect_to solutions_data_path
    # else
    #   render 'index'
    # end
  end

  def show
    @solution = Solution.find(params[:id])
  end

  def new
    @solution = Solution.new
  end

  def create
    file = get_file
    AddSolutionWorker.perform_async(file)
    redirect_to solutions_path, notice: 'solutions have been uploaded!'
  end

  def destroy
    RemoveSolutionWorker.perform_async
    redirect_to solutions_path
  end

  private

    def set_solution
      @solutions = Solution.all
    end

    def get_file
      tmp = params[:solution][:xlsx_file].tempfile
      file = File.join("public", params[:solution][:xlsx_file].original_filename)
      FileUtils.cp tmp.path, file
      
      file
    end

end
