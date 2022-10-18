class AddClassYearToMentorAssignments < ActiveRecord::Migration[6.1]
  def change
    add_column :mentor_assignments, :class_year, :string
  end
end
