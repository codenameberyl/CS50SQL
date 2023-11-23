-- Indexes for students table
CREATE INDEX "students_id" ON "students"("id");

-- Indexes for courses table
CREATE INDEX "courses_department_number_semester" ON "courses"("department", "number", "semester");
CREATE INDEX "courses_title_semester" ON "courses"("title", "semester");

-- Indexes for enrollments table
CREATE INDEX "enrollments_student_id" ON "enrollments"("student_id");
CREATE INDEX "enrollments_course_id" ON "enrollments"("course_id");

-- Indexes for satisfies table
CREATE INDEX "satisfies_course_id" ON "satisfies"("course_id");
CREATE INDEX "satisfies_requirement_id" ON "satisfies"("requirement_id");

-- Indexes for queries involving students and enrollments
CREATE INDEX "enrollments_student_id_course_id" ON "enrollments"("student_id", "course_id");

-- Indexes for queries involving courses and enrollments
CREATE INDEX "enrollments_course_id_student_id" ON "enrollments"("course_id", "student_id");

-- Indexes for queries involving courses and satisfies
CREATE INDEX "satisfies_course_id_requirement_id" ON "satisfies"("course_id", "requirement_id");

-- Indexes for queries involving requirements and satisfies
CREATE INDEX "satisfies_requirement_id_course_id" ON "satisfies"("requirement_id", "course_id");