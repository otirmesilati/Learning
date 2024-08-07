-- creating the student's table
drop table student_table;
create table student_table (
    -- defining student ID + it's primary
    student_id int auto_increment primary key,
    -- defining name and constraining
    student_name varchar(20) not null,
    -- defining major and constraining
    student_major varchar(20) default 'undecided'
); 

-- checking the current schema 
describe student_table;
-- modifying the table after creation
-- alter table student_table add gpa decimal(3 ,2);

-- handling insertions: order inserting matters
-- insert into student_table values(1, 'Jack', 'Biology');
-- insert into student_table values(2, 'Kate', 'Sociology');
-- partial insertion
-- insert into student_table values(4, 'Jack', 'Biology');
-- insert into student_table values(5, 'Mike', 'Computer Science');

-- using the auto insertions
insert into student_table (student_name, student_major) values ('Jack', 'Biology');
insert into student_table (student_name, student_major) values ('Kate', 'Sociology');
insert into student_table (student_name, student_major) values ('Claire', 'Chemistry');
insert into student_table (student_name, student_major) values ('Jack', 'Biology');
insert into student_table (student_name, student_major) values ('Mike', 'Computer Science');

-- modifying the data 
update student_table
set student_major = 'Bio'
where student_major = 'Biology';

update student_table
set student_major = 'Comp Sci'
where student_major = 'Computer Science';
-- set student_name = 'Tom', student_major = 'undecided'
-- where student_major = 'Bio' or student_major = 'Chemistry';

-- Querying the whole table
select * from student_table;
-- Querying the student's names
select student_name from student_table;
select student_table.student_name, -- notice the alternative modular writing
 student_table.student_major from student_table
 order by student_table.student_name;
