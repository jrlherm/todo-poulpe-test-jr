class AddFinishedToTasks < ActiveRecord::Migration[6.0]
  def change
    add_column :tasks, :finished, :boolean, default: false
  end
end
