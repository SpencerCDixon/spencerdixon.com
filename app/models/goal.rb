class Goal < ActiveRecord::Base
  belongs_to :user

  validates :user_id, :name, :start_date, :due_date, presence: true
end
