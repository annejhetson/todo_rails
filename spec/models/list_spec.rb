require 'spec_helper'

describe List do
  it { should have_many :tasks }
  it { should validate_presence_of :name }

  context '#show_tasks' do
    it 'shows all tasks associated with the list.' do
      list_task = List.create({name: "Chores"})
      new_task1 = Task.create({name: "Clean House", done: false, list_id: list_task.id})
      new_task2 = Task.create({name: "Water Lawn", done: false, list_id: list_task.id})
      new_task3 = Task.create({name: "Move Furniture", done: true, list_id: 1})
      list_task.show_tasks.should eq [new_task1, new_task2]
    end
  end
end
