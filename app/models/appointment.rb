class Appointment < ActiveRecord::Base
  has_many :feedbacks
  belongs_to :mentor, class_name: "User"
  belongs_to :student, class_name: "User"

  validates :start_time, :topic, presence: true

  validate :time_is_in_future

  def time_is_in_future
    if start_time < Time.now
      @errors.add(:start_time, "start_time must be in the future")
    end
  end

end
