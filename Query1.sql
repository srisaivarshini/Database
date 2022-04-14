-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2022-04-14 14:56:56.834
CREATE DATABASE Library;
USE Library;
-- tables
-- Table: Book
CREATE TABLE Book (
    ISBN varchar(13) NOT NULL,
    title varchar(100) NOT NULL,
    publication_year int NOT NULL,
    author_name varchar(100) NOT NULL,
    CONSTRAINT Book_pk PRIMARY KEY (ISBN)
);

-- Table: BookCopy
CREATE TABLE BookCopy (
    bookcopy_id int NOT NULL,
    ISBN varchar(13) NOT NULL,
    status varchar(100) NOT NULL,
    CONSTRAINT BookCopy_pk PRIMARY KEY (bookcopy_id)
);

-- Table: Department
CREATE TABLE Department (
    department_id int NOT NULL,
    department_name varchar(100) NOT NULL,
    CONSTRAINT Department_pk PRIMARY KEY (department_id)
);

-- Table: IssueDetails
CREATE TABLE IssueDetails (
    issue_id int NOT NULL,
    std_id int NOT NULL,
    bookcopy_id int NOT NULL,
    issue_date date NOT NULL,
    expiry_date date NOT NULL,
    CONSTRAINT IssueDetails_pk PRIMARY KEY (issue_id)
);

-- Table: ReturnDetails
CREATE TABLE ReturnDetails (
    return_id int NOT NULL,
    issue_id int NOT NULL,
    std_id int NOT NULL,
    bookcopy_id int NOT NULL,
    return_date date NOT NULL,
    Student_std_id int NOT NULL,
    CONSTRAINT ReturnDetails_pk PRIMARY KEY (return_id)
);

-- Table: Student
CREATE TABLE Student (
    std_id int NOT NULL,
    department_id int NOT NULL,
    name varchar(100) NOT NULL,
    address varchar(100) NOT NULL,
    CONSTRAINT Student_pk PRIMARY KEY (std_id)
);

-- foreign keys
-- Reference: BookCopy_Book (table: BookCopy)
ALTER TABLE BookCopy ADD CONSTRAINT BookCopy_Book FOREIGN KEY BookCopy_Book (ISBN)
    REFERENCES Book (ISBN);

-- Reference: IssueDetails_BookCopy (table: IssueDetails)
ALTER TABLE IssueDetails ADD CONSTRAINT IssueDetails_BookCopy FOREIGN KEY IssueDetails_BookCopy (bookcopy_id)
    REFERENCES BookCopy (bookcopy_id);

-- Reference: IssueDetails_Student (table: IssueDetails)
ALTER TABLE IssueDetails ADD CONSTRAINT IssueDetails_Student FOREIGN KEY IssueDetails_Student (std_id)
    REFERENCES Student (std_id);

-- Reference: ReturnDetails_BookCopy (table: ReturnDetails)
ALTER TABLE ReturnDetails ADD CONSTRAINT ReturnDetails_BookCopy FOREIGN KEY ReturnDetails_BookCopy (bookcopy_id)
    REFERENCES BookCopy (bookcopy_id);

-- Reference: ReturnDetails_IssueDetails (table: ReturnDetails)
ALTER TABLE ReturnDetails ADD CONSTRAINT ReturnDetails_IssueDetails FOREIGN KEY ReturnDetails_IssueDetails (issue_id)
    REFERENCES IssueDetails (issue_id);

-- Reference: ReturnDetails_Student (table: ReturnDetails)
ALTER TABLE ReturnDetails ADD CONSTRAINT ReturnDetails_Student FOREIGN KEY ReturnDetails_Student (std_id)
    REFERENCES Student (std_id);

-- Reference: Student_Department (table: Student)
ALTER TABLE Student ADD CONSTRAINT Student_Department FOREIGN KEY Student_Department (department_id)
    REFERENCES Department (department_id);

-- End of file.

