class WelcomeController < ApplicationController
  def index
    @mentors = Mentor.all
    @mentees = Mentee.all
    @mentor_assignments = MentorAssignment.all
  end
end
