class User < ActiveRecord::Base
  has_secure_password
  
  has_many :mentor_sessions, class_name: "Appointment", foreign_key: "mentor_id"
  has_many :study_sessions, class_name: "Appointment", foreign_key: "student_id"
  has_many :feedbacks

  def self.new_appointment(appointment_params)

    user = User.find(appointment_params[:mentor_id])
    p "@" * 20
    p user
    if user.user_type == 'student'
      @appointment = Appointment.find(appointment_params[:appointment_id])
      @appointment.update(appointment_params)
    else
      Appointment.create(appointment_params)
    end
  end

  private

  def appointment_params
    params.require(:appointment).permit(:mentor_id, :start_time, :end_time, :topic)
  end
end
