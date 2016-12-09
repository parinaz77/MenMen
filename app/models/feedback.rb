class Feedback < ActiveRecord::Base
	#Will add validations
  belongs_to :user
  belongs_to :appointment
end
