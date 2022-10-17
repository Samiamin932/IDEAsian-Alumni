class Mentor < ApplicationRecord
    has_many :MentorAssignments 
    has_many :mentees, through: :MentorAssignments
end
