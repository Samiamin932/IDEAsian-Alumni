class Mentor < ApplicationRecord
    has_many :MentorAssignments 
    has_many :AlumniAssignments
    has_many :mentees, through: :MentorAssignments
    has_many :alumnis, through: :AlumniAssignments
end
