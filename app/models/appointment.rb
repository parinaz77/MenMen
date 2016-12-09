class Appointment < ActiveRecord::Base
	#Will add validations
  has_many :feedbacks
  belongs_to :mentor, class_name: "User"
  belongs_to :student, class_name: "User"

end
