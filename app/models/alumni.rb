class Alumni < ApplicationRecord
    has_many :AlumniAssignments
    has_many :mentors, through: :AlumniAssignments
end
