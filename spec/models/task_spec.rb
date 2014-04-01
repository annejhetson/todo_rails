require 'spec_helper'

describe Task do
  it { should belong_to :list }
  it { should validate_presence_of :name }
  it { should validate_presence_of :list_id }

  context ".done_tasks" do
    it 'returns all completed tasks' do
      new_task1 = Task.create({name: "Clean House", done: false, list_id: 1})
      new_task2 = Task.create({name: "Water Lawn", done: false, list_id: 1})
      new_task3 = Task.create({name: "Move Furniture", done: true, list_id: 1})
      Task.done_tasks.should eq [new_task3]
    end
  end
  context ".not_done_tasks" do
    it 'returns all completed tasks' do
      new_task1 = Task.create({name: "Clean House", done: nil, list_id: 1})
      new_task2 = Task.create({name: "Water Lawn", done: nil, list_id: 1})
      new_task3 = Task.create({name: "Move Furniture", done: true, list_id: 1})
      Task.not_done_tasks.should eq [new_task1, new_task2]
    end
  end
end
