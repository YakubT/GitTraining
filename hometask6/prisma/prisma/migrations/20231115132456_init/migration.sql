-- CreateTable
CREATE TABLE "Student" (
    "id" SERIAL NOT NULL,
    "groupId" INTEGER NOT NULL,
    "surname" TEXT NOT NULL,
    "name" TEXT NOT NULL,

    CONSTRAINT "Student_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Group" (
    "id" SERIAL NOT NULL,
    "name" TEXT NOT NULL,

    CONSTRAINT "Group_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Subject" (
    "id" SERIAL NOT NULL,
    "name" TEXT NOT NULL,
    "credits" DOUBLE PRECISION NOT NULL,

    CONSTRAINT "Subject_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Teacher" (
    "id" SERIAL NOT NULL,
    "surname" TEXT NOT NULL,
    "name" TEXT NOT NULL,

    CONSTRAINT "Teacher_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Subject_Teacher" (
    "id" SERIAL NOT NULL,
    "id_teacher" INTEGER NOT NULL,
    "id_subject" INTEGER NOT NULL,

    CONSTRAINT "Subject_Teacher_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Mark" (
    "id" SERIAL NOT NULL,
    "id_student" INTEGER NOT NULL,
    "id_subject" INTEGER NOT NULL,

    CONSTRAINT "Mark_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "Student" ADD CONSTRAINT "Student_groupId_fkey" FOREIGN KEY ("groupId") REFERENCES "Group"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Subject_Teacher" ADD CONSTRAINT "Subject_Teacher_id_teacher_fkey" FOREIGN KEY ("id_teacher") REFERENCES "Teacher"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Subject_Teacher" ADD CONSTRAINT "Subject_Teacher_id_subject_fkey" FOREIGN KEY ("id_subject") REFERENCES "Subject"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Mark" ADD CONSTRAINT "Mark_id_student_fkey" FOREIGN KEY ("id_student") REFERENCES "Student"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Mark" ADD CONSTRAINT "Mark_id_subject_fkey" FOREIGN KEY ("id_subject") REFERENCES "Subject"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
