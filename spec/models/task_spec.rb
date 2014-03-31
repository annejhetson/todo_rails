require 'spec_helper'

describe Task do
  it { should validate_presence_of :name }

  context ".done_tasks" do
    it 'returns all completed tasks' do
      new_task1 = Task.create({name: "Clean House", done: false})
      new_task2 = Task.create({name: "Water Lawn", done: false})
      new_task3 = Task.create({name: "Move Furniture", done: true})
      Task.done_tasks.should eq [new_task3]
    end
  end
end
