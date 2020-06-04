class Physician < ActiveRecord::Base
  has_many :appointments
  has_many :patients, through: :appointments
end

# summary
# A phyisican can have many appointments
# A Physician can have many patients through the appointments
