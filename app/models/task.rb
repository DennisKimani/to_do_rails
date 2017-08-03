class Task < ActiveRecord::Base
  belongs_to :list_id

  validates :description, presence: true
end
