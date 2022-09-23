class CreateAlumniAssignments < ActiveRecord::Migration[6.1]
  def change
    create_table :alumni_assignments do |t|
      t.integer :Alumni_id
      t.integer :Mentor_id

      t.timestamps
    end
  end
end
