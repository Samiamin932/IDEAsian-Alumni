class Mentee < ApplicationRecord
    has_many :MentorAssignments
    has_many :mentors, through: :MentorAssignments
end
