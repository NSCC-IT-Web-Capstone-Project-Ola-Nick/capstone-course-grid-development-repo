-- Adminer 4.8.1 PostgreSQL 16.1 dump

\connect "courseGridDB";

DROP TABLE IF EXISTS "courses";
DROP SEQUENCE IF EXISTS courses_id_seq;
CREATE SEQUENCE courses_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1;

CREATE TABLE "public"."courses" (
    "id" integer DEFAULT nextval('courses_id_seq') NOT NULL,
    "courseName" text NOT NULL,
    "userId" integer NOT NULL,
    "dateCreated" timestamp(3) DEFAULT CURRENT_TIMESTAMP,
    "dateUpdated" timestamp(3) DEFAULT CURRENT_TIMESTAMP,
    "isArchived" boolean DEFAULT false NOT NULL,
    "thumbnail" character varying(250),
    CONSTRAINT "courses_pkey" PRIMARY KEY ("id")
) WITH (oids = false);

TRUNCATE "courses";
INSERT INTO "courses" ("id", "courseName", "userId", "dateCreated", "dateUpdated", "isArchived", "thumbnail") VALUES
(1,	'Defence Against the Dark Arts',	1,	'2024-02-10 17:50:28.182',	'2024-02-10 17:50:28.182',	'f',	NULL),
(2,	'Potions',	1,	'2024-02-10 17:51:44.39',	'2024-02-10 17:51:44.39',	'f',	NULL),
(3,	'Defence Against the Dark Arts',	1,	'2024-02-10 17:50:28.182',	'2024-02-10 17:50:28.182',	'f',	NULL),
(4,	'Potions',	1,	'2024-02-10 17:51:44.39',	'2024-02-10 17:51:44.39',	'f',	NULL),
(5,	'Defence Against the Dark Arts',	1,	'2024-02-10 17:50:28.182',	'2024-02-10 17:50:28.182',	'f',	NULL),
(6,	'Defence Against the Dark Arts',	1,	'2024-02-10 17:50:28.182',	'2024-02-10 17:50:28.182',	'f',	NULL),
(7,	'Potions',	1,	'2024-02-10 17:51:44.39',	'2024-02-10 17:51:44.39',	'f',	NULL),
(8,	'Potions',	1,	'2024-02-10 17:51:44.39',	'2024-02-10 17:51:44.39',	'f',	NULL),
(9,	'Defence Against the Dark Arts',	1,	'2024-02-10 17:50:28.182',	'2024-02-10 17:50:28.182',	'f',	NULL),
(10,	'Potions',	1,	'2024-02-10 17:51:44.39',	'2024-02-10 17:51:44.39',	'f',	NULL),
(11,	'Defence Against the Dark Arts',	1,	'2024-02-10 17:50:28.182',	'2024-02-10 17:50:28.182',	'f',	NULL),
(12,	'Potions',	1,	'2024-02-10 17:51:44.39',	'2024-02-10 17:51:44.39',	'f',	NULL),
(13,	'Defence Against the Dark Arts',	1,	'2024-02-10 17:50:28.182',	'2024-02-10 17:50:28.182',	'f',	NULL),
(14,	'Defence Against the Dark Arts',	1,	'2024-02-10 17:50:28.182',	'2024-02-10 17:50:28.182',	'f',	NULL),
(15,	'Potions',	1,	'2024-02-10 17:51:44.39',	'2024-02-10 17:51:44.39',	'f',	NULL),
(16,	'Potions',	1,	'2024-02-10 17:51:44.39',	'2024-02-10 17:51:44.39',	'f',	NULL),
(17,	'Defence Against the Dark Arts',	1,	'2024-02-10 17:50:28.182',	'2024-02-10 17:50:28.182',	'f',	NULL),
(18,	'Potions',	1,	'2024-02-10 17:51:44.39',	'2024-02-10 17:51:44.39',	'f',	NULL),
(19,	'Defence Against the Dark Arts',	1,	'2024-02-10 17:50:28.182',	'2024-02-10 17:50:28.182',	'f',	NULL),
(20,	'Potions',	1,	'2024-02-10 17:51:44.39',	'2024-02-10 17:51:44.39',	'f',	NULL),
(21,	'Defence Against the Dark Arts',	1,	'2024-02-10 17:50:28.182',	'2024-02-10 17:50:28.182',	'f',	NULL),
(22,	'Defence Against the Dark Arts',	1,	'2024-02-10 17:50:28.182',	'2024-02-10 17:50:28.182',	'f',	NULL),
(23,	'Potions',	1,	'2024-02-10 17:51:44.39',	'2024-02-10 17:51:44.39',	'f',	NULL),
(24,	'Potions',	1,	'2024-02-10 17:51:44.39',	'2024-02-10 17:51:44.39',	'f',	NULL),
(25,	'Defence Against the Dark Arts',	1,	'2024-02-10 17:50:28.182',	'2024-02-10 17:50:28.182',	'f',	NULL),
(26,	'Potions',	1,	'2024-02-10 17:51:44.39',	'2024-02-10 17:51:44.39',	'f',	NULL),
(27,	'Defence Against the Dark Arts',	1,	'2024-02-10 17:50:28.182',	'2024-02-10 17:50:28.182',	'f',	NULL),
(28,	'Potions',	1,	'2024-02-10 17:51:44.39',	'2024-02-10 17:51:44.39',	'f',	NULL),
(29,	'Defence Against the Dark Arts',	1,	'2024-02-10 17:50:28.182',	'2024-02-10 17:50:28.182',	'f',	NULL),
(30,	'Defence Against the Dark Arts',	1,	'2024-02-10 17:50:28.182',	'2024-02-10 17:50:28.182',	'f',	NULL),
(31,	'Potions',	1,	'2024-02-10 17:51:44.39',	'2024-02-10 17:51:44.39',	'f',	NULL),
(32,	'Potions',	1,	'2024-02-10 17:51:44.39',	'2024-02-10 17:51:44.39',	'f',	NULL);

DROP TABLE IF EXISTS "fileUploads";
DROP SEQUENCE IF EXISTS "fileUploads_id_seq";
CREATE SEQUENCE "fileUploads_id_seq" INCREMENT  MINVALUE  MAXVALUE  CACHE ;

CREATE TABLE "public"."fileUploads" (
    "id" integer DEFAULT nextval('"fileUploads_id_seq"') NOT NULL,
    "fileUniqueName" character varying(250) NOT NULL,
    "userId" integer NOT NULL,
    "lessonId" integer NOT NULL,
    "fileDisplayName" character varying(250) NOT NULL,
    CONSTRAINT "fileUploads_pkey" PRIMARY KEY ("id")
) WITH (oids = false);

TRUNCATE "fileUploads";

DROP TABLE IF EXISTS "lessons";
DROP SEQUENCE IF EXISTS lessons_id_seq;
CREATE SEQUENCE lessons_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1;

CREATE TABLE "public"."lessons" (
    "id" integer DEFAULT nextval('lessons_id_seq') NOT NULL,
    "lessonName" text NOT NULL,
    "lessonNumber" integer NOT NULL,
    "completionStatus" text DEFAULT 'not prepped' NOT NULL,
    "epectedOutcomes" text,
    "assessment" text,
    "dateCreated" timestamp(3) DEFAULT CURRENT_TIMESTAMP,
    "dateUpdated" timestamp(3) DEFAULT CURRENT_TIMESTAMP,
    "unitId" integer NOT NULL,
    CONSTRAINT "lessons_pkey" PRIMARY KEY ("id")
) WITH (oids = false);

TRUNCATE "lessons";
INSERT INTO "lessons" ("id", "lessonName", "lessonNumber", "completionStatus", "epectedOutcomes", "assessment", "dateCreated", "dateUpdated", "unitId") VALUES
(1,	'Lesson Name 1',	1,	'not prepped',	'Lorem ipsum dolor sit amet consectetur adipisicing elit. Earum veniam sint fugit, animi ipsum, natus ex quod pariatur aut, repellendus harum totam nulla nostrum commodi.',	'Lorem ipsum dolor sit amet consectetur adipisicing elit. Earum veniam sint fugit, animi ipsum, natus ex quod pariatur aut, repellendus harum totam nulla nostrum commodi.',	'2024-02-13 13:59:26.841',	'2024-02-13 13:59:26.841',	1),
(2,	'Lesson Name 2',	2,	'not prepped',	'Lorem ipsum dolor sit amet consectetur adipisicing elit. Earum veniam sint fugit, animi ipsum, natus ex quod pariatur aut, repellendus harum totam nulla nostrum commodi.',	'Lorem ipsum dolor sit amet consectetur adipisicing elit. Earum veniam sint fugit, animi ipsum, natus ex quod pariatur aut, repellendus harum totam nulla nostrum commodi.',	'2024-02-13 14:00:41.818',	'2024-02-13 14:00:41.818',	1),
(3,	'Lesson Name 3',	3,	'prepped',	'Lorem ipsum dolor sit amet consectetur adipisicing elit. Earum veniam sint fugit, animi ipsum, natus ex quod pariatur aut, repellendus harum totam nulla nostrum commodi.',	'Lorem ipsum dolor sit amet consectetur adipisicing elit. Earum veniam sint fugit, animi ipsum, natus ex quod pariatur aut, repellendus harum totam nulla nostrum commodi.',	'2024-02-13 14:01:05.337',	'2024-02-13 14:01:05.337',	2),
(4,	'Lesson Name 4',	4,	'done',	'Lorem ipsum dolor sit amet consectetur adipisicing elit. Earum veniam sint fugit, animi ipsum, natus ex quod pariatur aut, repellendus harum totam nulla nostrum commodi.',	'Lorem ipsum dolor sit amet consectetur adipisicing elit. Earum veniam sint fugit, animi ipsum, natus ex quod pariatur aut, repellendus harum totam nulla nostrum commodi.',	'2024-02-13 14:01:22.764',	'2024-02-13 14:01:22.764',	2),
(5,	'Lesson Name 5',	5,	'done',	'Lorem ipsum dolor sit amet consectetur adipisicing elit. Earum veniam sint fugit, animi ipsum, natus ex quod pariatur aut, repellendus harum totam nulla nostrum commodi.',	'Lorem ipsum dolor sit amet consectetur adipisicing elit. Earum veniam sint fugit, animi ipsum, natus ex quod pariatur aut, repellendus harum totam nulla nostrum commodi.',	'2024-02-13 14:01:47.124',	'2024-02-13 14:01:47.124',	3),
(6,	'Lesson Name 6',	6,	'not prepped',	'Lorem ipsum dolor sit amet consectetur adipisicing elit. Earum veniam sint fugit, animi ipsum, natus ex quod pariatur aut, repellendus harum totam nulla nostrum commodi.',	'Lorem ipsum dolor sit amet consectetur adipisicing elit. Earum veniam sint fugit, animi ipsum, natus ex quod pariatur aut, repellendus harum totam nulla nostrum commodi.',	'2024-02-13 14:02:07.912',	'2024-02-13 14:02:07.912',	3),
(7,	'Lesson Name 7',	7,	'done',	'Lorem ipsum dolor sit amet consectetur adipisicing elit. Earum veniam sint fugit, animi ipsum, natus ex quod pariatur aut, repellendus harum totam nulla nostrum commodi.',	'Lorem ipsum dolor sit amet consectetur adipisicing elit. Earum veniam sint fugit, animi ipsum, natus ex quod pariatur aut, repellendus harum totam nulla nostrum commodi.',	'2024-02-13 14:02:39.538',	'2024-02-13 14:02:39.538',	4),
(8,	'Lesson Name 8',	8,	'not prepped',	'Lorem ipsum dolor sit amet consectetur adipisicing elit. Earum veniam sint fugit, animi ipsum, natus ex quod pariatur aut, repellendus harum totam nulla nostrum commodi.',	'Lorem ipsum dolor sit amet consectetur adipisicing elit. Earum veniam sint fugit, animi ipsum, natus ex quod pariatur aut, repellendus harum totam nulla nostrum commodi.',	'2024-02-13 14:02:59.13',	'2024-02-13 14:02:59.13',	4);

DROP TABLE IF EXISTS "notes";
DROP SEQUENCE IF EXISTS notes_id_seq;
CREATE SEQUENCE notes_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1;

CREATE TABLE "public"."notes" (
    "id" integer DEFAULT nextval('notes_id_seq') NOT NULL,
    "note" text NOT NULL,
    "userId" integer NOT NULL,
    "lessonId" integer NOT NULL,
    CONSTRAINT "notes_pkey" PRIMARY KEY ("id")
) WITH (oids = false);

TRUNCATE "notes";

DROP TABLE IF EXISTS "thumbnails";
DROP SEQUENCE IF EXISTS thumbnails_id_seq;
CREATE SEQUENCE thumbnails_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1;

CREATE TABLE "public"."thumbnails" (
    "id" integer DEFAULT nextval('thumbnails_id_seq') NOT NULL,
    "thumbnail" character varying(250) NOT NULL,
    "userId" integer NOT NULL,
    CONSTRAINT "thumbnails_pkey" PRIMARY KEY ("id")
) WITH (oids = false);

TRUNCATE "thumbnails";
INSERT INTO "thumbnails" ("id", "thumbnail", "userId") VALUES
(1,	'course-image.png',	1);

DROP TABLE IF EXISTS "units";
DROP SEQUENCE IF EXISTS units_id_seq;
CREATE SEQUENCE units_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1;

CREATE TABLE "public"."units" (
    "id" integer DEFAULT nextval('units_id_seq') NOT NULL,
    "unitNumber" integer NOT NULL,
    "unitName" text NOT NULL,
    "courseId" integer NOT NULL,
    "dateCreated" timestamp(3) DEFAULT CURRENT_TIMESTAMP,
    "dateUpdated" timestamp(3) DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT "units_pkey" PRIMARY KEY ("id")
) WITH (oids = false);

TRUNCATE "units";
INSERT INTO "units" ("id", "unitNumber", "unitName", "courseId", "dateCreated", "dateUpdated") VALUES
(1,	1,	'Unit Name 1',	1,	'2024-02-13 13:56:34.076',	'2024-02-13 13:56:34.076'),
(2,	2,	'Unit Name 2',	1,	'2024-02-13 13:56:41.59',	'2024-02-13 13:56:41.59'),
(3,	3,	'Unit Name 3',	1,	'2024-02-13 13:56:51.283',	'2024-02-13 13:56:51.283'),
(4,	4,	'Unit Name 4',	1,	'2024-02-13 13:57:03.042',	'2024-02-13 13:57:03.042');

DROP TABLE IF EXISTS "users";
DROP SEQUENCE IF EXISTS users_id_seq;
CREATE SEQUENCE users_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1;

CREATE TABLE "public"."users" (
    "id" integer DEFAULT nextval('users_id_seq') NOT NULL,
    "email" text NOT NULL,
    "password" text NOT NULL,
    "firstName" text,
    "lastName" text,
    "title" text,
    "organization" text,
    "dateCreated" timestamp(3) DEFAULT CURRENT_TIMESTAMP,
    "dateUpdated" timestamp(3) DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT "users_email_key" UNIQUE ("email"),
    CONSTRAINT "users_pkey" PRIMARY KEY ("id")
) WITH (oids = false);

TRUNCATE "users";
INSERT INTO "users" ("id", "email", "password", "firstName", "lastName", "title", "organization", "dateCreated", "dateUpdated") VALUES
(1,	'iamseverous@hogwardsschoolofmagic.com',	'$2b$10$1LqxuTPcdW5AMr8V7BsZ6OnPvEc1/lRcS3mdNJ05lMA9nJxIxD4kq',	'Severous',	'Snape',	'Defense Against the Dark Arts',	'Hogwards',	'2024-01-25 21:11:44.275',	'2024-01-25 21:11:44.275');

ALTER TABLE ONLY "public"."courses" ADD CONSTRAINT "courses_userId_fkey" FOREIGN KEY ("userId") REFERENCES users(id) ON UPDATE CASCADE ON DELETE CASCADE NOT DEFERRABLE;

ALTER TABLE ONLY "public"."fileUploads" ADD CONSTRAINT "fileUploads_lessonId_fkey" FOREIGN KEY ("lessonId") REFERENCES lessons(id) ON UPDATE CASCADE ON DELETE CASCADE NOT DEFERRABLE;
ALTER TABLE ONLY "public"."fileUploads" ADD CONSTRAINT "fileUploads_userId_fkey" FOREIGN KEY ("userId") REFERENCES users(id) ON UPDATE CASCADE ON DELETE CASCADE NOT DEFERRABLE;

ALTER TABLE ONLY "public"."lessons" ADD CONSTRAINT "lessons_unitId_fkey" FOREIGN KEY ("unitId") REFERENCES units(id) ON UPDATE CASCADE ON DELETE CASCADE NOT DEFERRABLE;

ALTER TABLE ONLY "public"."notes" ADD CONSTRAINT "notes_lessonId_fkey" FOREIGN KEY ("lessonId") REFERENCES lessons(id) ON UPDATE CASCADE ON DELETE CASCADE NOT DEFERRABLE;
ALTER TABLE ONLY "public"."notes" ADD CONSTRAINT "notes_userId_fkey" FOREIGN KEY ("userId") REFERENCES users(id) ON UPDATE CASCADE ON DELETE CASCADE NOT DEFERRABLE;

ALTER TABLE ONLY "public"."thumbnails" ADD CONSTRAINT "thumbnails_userId_fkey" FOREIGN KEY ("userId") REFERENCES users(id) ON UPDATE CASCADE ON DELETE CASCADE NOT DEFERRABLE;

ALTER TABLE ONLY "public"."units" ADD CONSTRAINT "units_courseId_fkey" FOREIGN KEY ("courseId") REFERENCES courses(id) ON UPDATE CASCADE ON DELETE CASCADE NOT DEFERRABLE;

-- 2024-02-13 14:14:15.880196+00