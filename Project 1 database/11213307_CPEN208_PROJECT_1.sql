CREATE SCHEMA cpen_schema;

-- Create Student Table
CREATE TABLE cpen_schema.students (
    student_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    date_of_birth DATE,
    email VARCHAR(100) UNIQUE NOT NULL,
    phone_number VARCHAR(15),
    address TEXT
);

-- Create Fees Table
CREATE TABLE cpen_schema.fees (
    fee_id SERIAL PRIMARY KEY,
    student_id INT REFERENCES cpen_schema.students(student_id),
    amount DECIMAL(10, 2) NOT NULL,
    date_paid DATE,
    status VARCHAR(20) CHECK (status IN ('Paid', 'Pending'))
);

-- Create Courses Table
CREATE TABLE cpen_schema.courses (
    course_id SERIAL PRIMARY KEY,
    course_name VARCHAR(100) NOT NULL,
    course_code VARCHAR(10) UNIQUE NOT NULL,
    credit_hours INT NOT NULL
);

-- Create Course Enrollment Table
CREATE TABLE cpen_schema.course_enrollment (
    enrollment_id SERIAL PRIMARY KEY,
    student_id INT REFERENCES cpen_schema.students(student_id),
    course_id INT REFERENCES cpen_schema.courses(course_id),
    enrollment_date DATE NOT NULL,
    credit_hours INT
);

-- Create Lecturers Table
CREATE TABLE cpen_schema.lecturers (
    lecturer_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    phone_number VARCHAR(15)
);

-- Create TA Table
CREATE TABLE cpen_schema.ta (
    ta_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    phone_number VARCHAR(15)
);

-- Create Lecturer to Course Assignment Table
CREATE TABLE cpen_schema.lecturer_course_assignment (
    lecturer_id INT REFERENCES cpen_schema.lecturers(lecturer_id),
    course_id INT REFERENCES cpen_schema.courses(course_id),
    PRIMARY KEY (lecturer_id, course_id)
);

-- Create Lecturer to TA Assignment Table
CREATE TABLE cpen_schema.lecturer_ta_assignment (
    lecturer_id INT REFERENCES cpen_schema.lecturers(lecturer_id),
    ta_id INT REFERENCES cpen_schema.ta(ta_id),
    PRIMARY KEY (lecturer_id, ta_id)
);

-- Insert sample students
INSERT INTO cpen_schema.students (first_name, last_name, date_of_birth, email, phone_number, address) VALUES
('Samuel', 'Ampomah', '2003-01-01', 'ampomahsamuel@gmail.com', '0244122133', '125 Maine St'),
('Samuel', 'Attu', '2004-03-21', 'attusamuel@gmail.com', '0502123421', '226 Elmina St'),
('Nana', 'Dankwah', '2003-11-20', 'nanadankwah@gmail.com', '0203341215', '47 Dorker Ln'),
('Jeffery', 'Eririe', '2004-07-12', 'eririejeff@gmail.com', '0546101018', '206 Manhyia St'),
('Kinsley', 'Osei', '2004-05-01', 'kingosei@gmail.com', '0201123590', '156 Limann St');

-- Insert sample fees
INSERT INTO cpen_schema.fees (student_id, amount, date_paid, status) VALUES
(1, 2000.00, '2024-03-21', 'Paid'),
(2, 2500.00, '2024-03-13', 'Paid'),
(3, 2000.00, '2024-03-30', 'Pending'),
(4, 1500.00, '2024-03-15', 'Paid'),
(5, 1500.00, '2024-03-12', 'Paid');

-- Insert sample courses
INSERT INTO cpen_schema.courses (course_name, course_code, credit_hours) VALUES
('Computer Systems Design', 'CPEN202', 3),
('Data Structures & Algorithms', 'CPEN204', 2),
('Linear Circuits', 'CPEN206', 3),
('Software Engineering', 'CPEN208', 3),
('Data Communication', 'CPEN212', 2);

-- Insert sample course enrollments
INSERT INTO cpen_schema.course_enrollment (student_id, course_id, enrollment_date, credit_hours) VALUES
(1, 1, '2024-03-25', 3),
(1, 2, '2024-03-25', 2),
(1, 3, '2024-03-25', 3),
(1, 4, '2024-03-25', 3),
(1, 5, '2024-03-25', 2),

(2, 1, '2024-03-16', 3),
(2, 2, '2024-03-16', 2),
(2, 3, '2024-03-16', 3),
(2, 4, '2024-03-16', 3),
(2, 5, '2024-03-16', 2),

(4, 1, '2024-03-21', 3),
(4, 2, '2024-03-21', 2),
(4, 3, '2024-03-21', 3),
(4, 4, '2024-03-21', 3),
(4, 5, '2024-03-21', 2),

(5, 1, '2024-03-18', 3),
(5, 2, '2024-03-18', 2),
(5, 3, '2024-03-18', 3),
(5, 4, '2024-03-18', 3),
(5, 5, '2024-03-18', 2);

-- Insert sample lecturers
INSERT INTO cpen_schema.lecturers (first_name, last_name, email, phone_number) VALUES
('Dr. Agyare', 'Debrah', 'agyaredebrah@gmail.com', '0500120914'),
('Dr. Magaret', 'Opoku', 'magopoku@gmail.com', '0244111015'),
('Dr. Mills', 'Aboagye', 'aboagyemills@gmail.com', '0241909236'),
('Dr. John', 'Assiamah', 'assiamahjohn@gmail.com', '0543219663'),
('Dr. Isaac', 'Aboagye', 'ikeaboagye@gmail.com', '0206279110');

-- Insert sample TAs
INSERT INTO cpen_schema.ta (first_name, last_name, email, phone_number) VALUES
('Bamzy', 'Oduro', 'bamzyoduro@gmail.com', '0244101014'),
('Efo', 'Anopa', 'efoanopa@gmail.com', '0206137281'),
('Hakeem', 'Nasser', 'hakeemnasser@gmail.com', '0204123412'),
('David', 'Asante', 'asantedave@gmail.com', '0543933633');

-- Insert sample lecturer to course assignments
INSERT INTO cpen_schema.lecturer_course_assignment (lecturer_id, course_id) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5);

-- Insert sample lecturer to TA assignments
INSERT INTO cpen_schema.lecturer_ta_assignment (lecturer_id, ta_id) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 2),
(5, 4);

SELECT * FROM cpen_schema.students;
SELECT * FROM cpen_schema.fees;
SELECT * FROM cpen_schema.courses;
SELECT * FROM cpen_schema.course_enrollment;
SELECT * FROM cpen_schema.lecturers;
SELECT * FROM cpen_schema.ta;
SELECT * FROM cpen_schema.lecturer_course_assignment;
SELECT * FROM cpen_schema.lecturer_ta_assignment;


CREATE OR REPLACE FUNCTION cpen_schema.calculate_outstanding_fees()
RETURNS JSON AS $$
DECLARE
    result JSON;
    total_fee_per_student DECIMAL := 2500.00;
BEGIN
    SELECT json_agg(row_to_json(t))
    INTO result
    FROM (
        SELECT s.student_id, s.first_name, s.last_name,
               total_fee_per_student AS total_fees_due,
               COALESCE(SUM(CASE WHEN f.status = 'Paid' THEN f.amount ELSE 0 END), 0) AS total_fees_paid,
               COALESCE(SUM(CASE WHEN f.status = 'Pending' THEN f.amount ELSE 0 END), 0) AS pending_fees,
               total_fee_per_student - COALESCE(SUM(CASE WHEN f.status = 'Paid' THEN f.amount ELSE 0 END), 0) AS outstanding_fees
        FROM cpen_schema.students s
        LEFT JOIN cpen_schema.fees f ON s.student_id = f.student_id
        GROUP BY s.student_id, s.first_name, s.last_name
    ) t;

    RETURN result;
END;
$$ LANGUAGE plpgsql;

-- Example usage:
SELECT cpen_schema.calculate_outstanding_fees();
