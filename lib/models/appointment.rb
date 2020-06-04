class Appointment < ActiveRecord::Base
  belongs_to :physician
  belongs_to :patient
end

# summary
# An appointment belongs to a physician because physicians can have many appointments
# An appointment belongs to a patient because a patient can have many appointments
