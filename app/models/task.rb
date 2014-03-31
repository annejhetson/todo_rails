class Task < ActiveRecord::Base
  validates :name, :presence => true

  def self.done_tasks
    Task.where(done: true)
  end

  def self.not_done_tasks
    Task.where(done: nil)
  end
end
