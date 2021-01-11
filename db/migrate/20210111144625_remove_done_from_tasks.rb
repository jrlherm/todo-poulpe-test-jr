class RemoveDoneFromTasks < ActiveRecord::Migration[6.0]
  def change
    remove_column :tasks, :done
  end
end
