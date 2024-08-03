create table student_table (
    -- defining student ID + it's primary
    student_id int primary key,
    -- defning name and constraining
    student_name varchar(20) not null,
    -- dening major and constraining
    student_major varchar(20) default 'undecided';

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
insert into student_table values(4, 'Jack', 'Biology');
insert into student_table values(5, 'Mike', 'Computer Science');

select * from student_table;
