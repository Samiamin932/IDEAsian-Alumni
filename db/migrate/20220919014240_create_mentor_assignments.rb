class CreateMentorAssignments < ActiveRecord::Migration[6.1]
  def change
    create_table :mentor_assignments do |t|
      t.integer :Mentor_id
      t.integer :Mentee_id

      t.timestamps
    end
  end
end
