class RemovePositionFromTasks < ActiveRecord::Migration[6.0]
  def change
    remove_column :tasks, :position, :integer
  end
end
