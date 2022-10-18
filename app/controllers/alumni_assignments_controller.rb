class AlumniAssignmentsController < ApplicationController
  before_action :set_alumni_assignment, only: %i[ show edit update destroy ]

  # GET /alumni_assignments or /alumni_assignments.json
  def index
    @alumni_assignments = AlumniAssignment.all
  end

  # GET /alumni_assignments/1 or /alumni_assignments/1.json
  def show
  end

  # GET /alumni_assignments/new
  def new
    @alumni_assignment = AlumniAssignment.new
  end

  # GET /alumni_assignments/1/edit
  def edit
  end

  # POST /alumni_assignments or /alumni_assignments.json
  def create
    @alumni_assignment = AlumniAssignment.new(alumni_assignment_params)

    respond_to do |format|
      if @alumni_assignment.save
        format.html { redirect_to alumni_assignment_url(@alumni_assignment), notice: "Alumni assignment was successfully created." }
        format.json { render :show, status: :created, location: @alumni_assignment }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @alumni_assignment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /alumni_assignments/1 or /alumni_assignments/1.json
  def update
    respond_to do |format|
      if @alumni_assignment.update(alumni_assignment_params)
        format.html { redirect_to alumni_assignment_url(@alumni_assignment), notice: "Alumni assignment was successfully updated." }
        format.json { render :show, status: :ok, location: @alumni_assignment }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @alumni_assignment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /alumni_assignments/1 or /alumni_assignments/1.json
  def destroy
    @alumni_assignment.destroy

    respond_to do |format|
      format.html { redirect_to alumni_assignments_url, notice: "Alumni assignment was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_alumni_assignment
      @alumni_assignment = AlumniAssignment.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def alumni_assignment_params
      params.require(:alumni_assignment).permit(:Alumni_id, :Mentor_id)
    end
end
