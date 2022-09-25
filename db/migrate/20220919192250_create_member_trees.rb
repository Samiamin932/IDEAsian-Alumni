class CreateMemberTrees < ActiveRecord::Migration[6.1]
  def change
    create_table :member_trees do |t|

      t.timestamps
    end
  end
end
