require 'rails_helper'

describe Voting::Repository, '#load_all', type: [:repository] do

  subject { Voting::Repository.new Task }


  describe 'Create a new object' do

    context 'When Create object task with All Params' do

      let(:params) { {title: 'task Title', description: 'Task Desc'} }

      before { subject.save params }

      it 'should create a new task with this params' do
        task = Task.first
        expect(task.title).to eq params[:title]
        expect(task.description).to eq params[:description]

      end
    end
  end

  describe 'upddate object' do

    context 'When Update a task' do

      let(:task) { create :task, title: 'old title'}
      let(:params) { {title: 'New Title'} }

      before do
        subject.save params, task.id
        task.reload
      end

      it 'should raname task title to New Title' do
        expect(task.title).to eq 'New Title'
      end

    end
  end
end
