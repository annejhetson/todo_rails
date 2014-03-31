class Task < ActiveRecord::Base
  validates :name, :presence => true

  # def self.done_
end
