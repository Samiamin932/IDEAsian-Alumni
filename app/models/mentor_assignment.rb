class MentorAssignment < ApplicationRecord

    belongs_to :Mentee
    belongs_to :Mentor

    scope :filter_by_class_year, -> (class_year) { where class_year: class_year }
end
