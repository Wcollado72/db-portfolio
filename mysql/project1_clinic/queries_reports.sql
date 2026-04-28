-- Example queries and reports for the clinic management project

-- 1. List all patients with their basic info
SELECT
    patient_id,
    first_name,
    last_name,
    date_of_birth,
    gender,
    phone,
    email
FROM patients;

-- 2. List all doctors and their specialties
SELECT
    d.doctor_id,
    d.first_name,
    d.last_name,
    s.name AS specialty_name
FROM doctors d
JOIN specialties s ON d.specialty_id = s.specialty_id;

-- 3. Upcoming appointments with patient and doctor names
SELECT
    a.appointment_id,
    a.appointment_datetime,
    a.status,
    p.first_name AS patient_first_name,
    p.last_name AS patient_last_name,
    d.first_name AS doctor_first_name,
    d.last_name AS doctor_last_name,
    s.name AS specialty_name
FROM appointments a
JOIN patients p ON a.patient_id = p.patient_id
JOIN doctors d ON a.doctor_id = d.doctor_id
JOIN specialties s ON d.specialty_id = s.specialty_id
ORDER BY a.appointment_datetime;

-- 4. Count of appointments per doctor
SELECT
    d.doctor_id,
    d.first_name,
    d.last_name,
    COUNT(a.appointment_id) AS total_appointments
FROM doctors d
LEFT JOIN appointments a ON d.doctor_id = a.doctor_id
GROUP BY d.doctor_id, d.first_name, d.last_name
ORDER BY total_appointments DESC;

-- 5. Appointments by status (scheduled vs completed)
SELECT
    status,
    COUNT(*) AS total
FROM appointments
GROUP BY status;
