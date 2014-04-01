class Task < ActiveRecord::Base
  validates :name, :presence => true
  validates :list_id, :presence => true
  belongs_to :list

  def self.done_tasks
    Task.where(done: true)
  end

  def self.not_done_tasks
    Task.where(done: nil)
  end
end
