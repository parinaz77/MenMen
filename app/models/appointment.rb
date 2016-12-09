class Appointment < ActiveRecord::Base
  has_many :feedbacks
  belongs_to :mentor, class_name: "User"
  belongs_to :student, class_name: "User"

  validates :start_time, :topic, presence: true
end
