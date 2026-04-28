-- Sample data for clinic management project

-- Clear existing data (for development)
DELETE FROM appointments;
DELETE FROM doctors;
DELETE FROM patients;
DELETE FROM specialties;

-- Insert specialties
INSERT INTO specialties (name, description) VALUES
('General Medicine', 'Primary care and general medical issues'),
('Pediatrics', 'Health care for children'),
('Cardiology', 'Heart and cardiovascular system'),
('Dermatology', 'Skin-related conditions');

-- Insert patients
INSERT INTO patients (first_name, last_name, date_of_birth, gender, phone, email) VALUES
('John', 'Doe', '1985-03-10', 'M', '+1-787-555-0001', 'john.doe@example.com'),
('Jane', 'Smith', '1990-07-22', 'F', '+1-787-555-0002', 'jane.smith@example.com'),
('Carlos', 'Rivera', '1978-11-05', 'M', '+1-787-555-0003', 'carlos.rivera@example.com'),
('Maria', 'Lopez', '2005-01-15', 'F', '+1-787-555-0004', 'maria.lopez@example.com');

-- Insert doctors
INSERT INTO doctors (first_name, last_name, specialty_id, phone, email) VALUES
('Ana', 'Gonzalez', 1, '+1-787-555-1001', 'ana.gonzalez@clinic.local'),
('Luis', 'Martinez', 2, '+1-787-555-1002', 'luis.martinez@clinic.local'),
('Sofia', 'Torres', 3, '+1-787-555-1003', 'sofia.torres@clinic.local'),
('Pedro', 'Santos', 4, '+1-787-555-1004', 'pedro.santos@clinic.local');

-- Insert appointments
INSERT INTO appointments (patient_id, doctor_id, appointment_datetime, reason, status) VALUES
(1, 1, '2026-05-10 09:00:00', 'General checkup', 'completed'),
(2, 1, '2026-05-11 10:30:00', 'Headache and fatigue', 'scheduled'),
(3, 3, '2026-05-12 14:00:00', 'Chest pain', 'scheduled'),
(4, 2, '2026-05-13 08:45:00', 'Routine pediatric visit', 'completed'),
(1, 4, '2026-05-14 11:15:00', 'Skin rash', 'scheduled');
