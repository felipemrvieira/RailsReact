require 'fileutils'

class SolutionsController < ApplicationController
  # before_action :authenticate_user!
  before_action :set_solution, only: %i[ show edit update destroy ]


  def index
    @solutions = Solution.order(:number)
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

  def edit
  end

  def update
    respond_to do |format|
      if @solution.update(solution_params)
        format.html { redirect_to @solution, notice: "solution was successfully updated." }
        format.json { render :show, status: :ok, location: @solution }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @solution.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    RemoveSolutionWorker.perform_async
    redirect_to solutions_path
  end

  private

    def set_solution
      @solution = Solution.find(params[:id])
    end

    def solution_params
      params.require(:solution).permit(:number, :title, :description, 
        :guiding_public_policies, :technical_references, 
        :examples_of_municipal_application, :action_category, 
        :environmental_cobenefits, :social_cobenefits, :economic_cobenefits, 
        :municipal_operating_mode, :alignment_with_ndc, :necessary_investment, 
        :financing, :key_actors, :challenges, :implementation_time, :solution_of,
        :fundamental_sector, :impact_on_emissions, :sphere)
    end

    def get_file
      tmp = params[:solution][:xlsx_file].tempfile
      file = File.join("public", params[:solution][:xlsx_file].original_filename)
      FileUtils.cp tmp.path, file
      
      file
    end

end
