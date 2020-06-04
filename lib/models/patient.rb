class Patient < ActiveRecord::Base
  has_many :appointments
  has_many :physicians, through: :appointments
end

# summary
# A patient can have many appointments
# A patient can have many physicians through their different appointments
