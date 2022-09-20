class WelcomeController < ApplicationController
  def index
    @alumnis = Alumni.all
    @mentors = Mentor.all
    @mentees = Mentee.all
    @alumni_assignments = AlumniAssignment.all
    @mentor_assignments = MentorAssignment.all
  end
end
