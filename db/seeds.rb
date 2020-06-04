require "faker"

Physician.destroy_all
Appointment.destroy_all
Patient.destroy_all

def seed_dr
  10.times do
    name = Faker::Name.unique.first_name
    last = Faker::Name.unique.last_name
    dr = "Dr." + name + " " + last
    Physician.create(name: dr)
  end
end

seed_dr()

def seed_patients
  10.times do
    name = Faker::Name.unique.first_name
    last = Faker::Name.unique.last_name
    full_name = name + last
    Patient.create(name: full_name)
  end
end

seed_patients()

def seed_appointments
  py = Physician.all.map { |physician| physician.id }
  pa = Patient.all.map { |patient| patient.id }
  i = 0
  10.times do
    appt = Faker::Time.between(from: DateTime.now - 1, to: DateTime.now, format: :long)
    Appointment.create(appointment: appt, physician_id: py[i], patient_id: pa[i])
    i += 1
  end
end

seed_appointments()

Appointment.create(appointment: Faker::Time.between(from: DateTime.now - 1, to: DateTime.now, format: :long), physician_id: 1, patient_id: 1)
Patient.create(name: "Dev Test")
