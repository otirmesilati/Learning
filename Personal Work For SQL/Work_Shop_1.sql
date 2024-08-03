create table student_table (
    -- defining student ID + it's primary
    student_id int primary key,
    -- defning name 
    student_name varchar[20],
    -- dening major
    student_major varchar [20]

);

-- checking the current schema
describe student_table;
-- modifying the table after creation
-- alter table student_table add gpa decimal(3 ,2);

-- handling insertions: order inserting matters
insert into student_table values (1, 'Jack', 'Biology');
insert into student_table values(2, 'Kate', 'Sociology');
-- partial insertion
insert into student_table (student_id, student_name) values (3, 'Claire');

select * from student_table;
