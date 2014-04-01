class List < ActiveRecord::Base
  has_many :tasks
  validates :name, :presence => true

  def show_tasks
    list = List.find(self.id)
    list.tasks
  end
end
