require 'rails_helper'

  describe "the add a task process" do
    it "adds a new task" do
      visit tasks_path
      click_link 'New Task'
      fill_in 'Description', :with => 'More details'
      click_on 'Create Task'
      expect(page).to have_content 'Tasks'
    end

    it "gives error when no decription is entered" do
      visit new_task_path
      click_on 'Create task'
      expect(page).to have_content 'errors'
    end
  end
