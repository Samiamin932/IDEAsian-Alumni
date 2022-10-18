class MemberTreesController < ApplicationController
  before_action :set_member_tree, only: %i[ show edit update destroy ]

  class Node
    attr_accessor :name, :parent, :children
  
    def initialize(name = nil, &block)
      @name = name
      @children = []
      if block_given?
        instance_eval(&block)
      end
    end
  
    def add(*args, &block)
      tap do
        children << self.class.new(*args, &block).tap { |v| v.parent = self }
      end
    end
  end

  # GET /member_trees or /member_trees.json
  def index
    @mentors = Mentor.all
    @mentees = Mentee.all
    @member_trees = MemberTree.all
    @mentor_assignments = MentorAssignment.all
  end

  # GET /member_trees/1 or /member_trees/1.json
  def show
  end

  # GET /member_trees/new
  def new
    @member_tree = MemberTree.new
  end

  # GET /member_trees/1/edit
  def edit
  end

  # POST /member_trees or /member_trees.json
  def create
    @member_tree = MemberTree.new(member_tree_params)

    respond_to do |format|
      if @member_tree.save
        format.html { redirect_to member_tree_url(@member_tree), notice: "Member tree was successfully created." }
        format.json { render :show, status: :created, location: @member_tree }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @member_tree.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /member_trees/1 or /member_trees/1.json
  def update
    respond_to do |format|
      if @member_tree.update(member_tree_params)
        format.html { redirect_to member_tree_url(@member_tree), notice: "Member tree was successfully updated." }
        format.json { render :show, status: :ok, location: @member_tree }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @member_tree.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /member_trees/1 or /member_trees/1.json
  def destroy
    @member_tree.destroy

    respond_to do |format|
      format.html { redirect_to member_trees_url, notice: "Member tree was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_member_tree
      @member_tree = MemberTree.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def member_tree_params
      params.fetch(:member_tree, {})
    end
end
