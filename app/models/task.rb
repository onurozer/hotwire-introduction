class Task < ApplicationRecord
  validates :title, presence: true

  after_create_commit -> {
    broadcast_append_to "tasks_activity", target: "tasks", partial: "tasks/task"
  }
  after_update_commit -> {
    broadcast_replace_to "tasks_activity", target: self, partial: "tasks/task"
  }
  after_destroy_commit -> {
    broadcast_remove_to "tasks_activity"
  }
end
