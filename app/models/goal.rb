class Goal < ActiveRecord::Base
  belongs_to :user

  validates :user_id, presence: true
  validates :name, presence: true
  validates :start_date, presence: true
  validates :due_date, presence: true

end
