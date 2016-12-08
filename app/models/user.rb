class User < ActiveRecord::Base
  has_secure_password
  
  has_many :mentor_sessions, class_name: "Appointment", foreign_key: "mentor_id"
  has_many :study_sessions, class_name: "Appointment", foreign_key: "student_id"
  has_many :feedbacks

end
