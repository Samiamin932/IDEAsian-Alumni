class MentorAssignmentsController < ApplicationController
  before_action :set_mentor_assignment, only: %i[ show edit update destroy ]

  # GET /mentor_assignments or /mentor_assignments.json
  def index
    @mentor_assignments = MentorAssignment.filter(params.slice(:class_year))
  end

  # GET /mentor_assignments/1 or /mentor_assignments/1.json
  def show
  end

  # GET /mentor_assignments/new
  def new
    @mentor_assignment = MentorAssignment.new
  end

  # GET /mentor_assignments/1/edit
  def edit
  end

  # POST /mentor_assignments or /mentor_assignments.json
  def create
    @mentor_assignment = MentorAssignment.new(mentor_assignment_params)

    respond_to do |format|
      if @mentor_assignment.save
        format.html { redirect_to mentor_assignment_url(@mentor_assignment), notice: "Mentor assignment was successfully created." }
        format.json { render :show, status: :created, location: @mentor_assignment }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @mentor_assignment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mentor_assignments/1 or /mentor_assignments/1.json
  def update
    respond_to do |format|
      if @mentor_assignment.update(mentor_assignment_params)
        format.html { redirect_to mentor_assignment_url(@mentor_assignment), notice: "Mentor assignment was successfully updated." }
        format.json { render :show, status: :ok, location: @mentor_assignment }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @mentor_assignment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mentor_assignments/1 or /mentor_assignments/1.json
  def destroy
    @mentor_assignment.destroy

    respond_to do |format|
      format.html { redirect_to mentor_assignments_url, notice: "Mentor assignment was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mentor_assignment
      @mentor_assignment = MentorAssignment.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def mentor_assignment_params
      params.require(:mentor_assignment).permit(:Mentor_id, :Mentee_id, :class_year)
    end
end
