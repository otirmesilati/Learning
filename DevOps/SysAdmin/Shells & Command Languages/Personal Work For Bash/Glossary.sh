# Yet to find an online CMD emulator









#   < < < < < < < <   Command Principles   > > > > > > > >   */

clear # Screen Clearing

$? # last command succesful?

env # list environment variables

#   % % % % % % % Frame Handling % % % % % % %




#   % % % % % % % File System Navigation & & & & & & 

pwd # print current (dubbed working) directory

#   ^ ^ ^ ^ ^ Changing File Directories ^ ^ ^ ^ ^

cd new_file # Relative path
cd new_file_1/new_file_2 # Absolute path
cd .. 
cd ../..

cd ~ # switching to home directory
cd ~ other_user # home directory of other user

cd - # switching to last directory

#   ^ ^ ^ ^ ^ Listing Directories ^ ^ ^ ^ ^

ls
ls directory_name

ls -1 # Ls'ing 1 file per line in the output


#   ^ ^ ^ ^ Listing Options ^ ^ ^ ^

#    ^ ^ ^ Sorted Options ^ ^ ^

ls -S # Sorts by size
ls -t # Sorts by last modification time
ls -r # Sorts in reverse-to-defualt order

ls -lt # combinations

#   ^ ^ ^ Adding Options ^ ^ ^

ls -i # Adds Inode Numbering
ls -s # Adds size

#   ^ ^ ^ More Items Options ^ ^ ^

ls -a # All Directories
ls -d # Directories Only

#   ^ ^ ^ Detailed Options ^ ^ ^

ls -l # Detailed - User Ownership
ls -la # All Directories + User OwnerShip
ls -g # Detailed - Group Ownership

ls -R # All Directories recursively on child items

#ls l?

# version checking: python -V







#   & & & & & & Text Files Content & & & & & &

#   ^ ^ ^ ^ ^ File Creation ^ ^ ^ ^ ^  

#   ^ ^ ^ ^ Folders ^ ^ ^ ^

mkdir my_directory
mkdir my_1_directory my_2_directory # creating many folders
mkdir -p make_all_the_parent_files_in_this_path # (declarative) if any folders in the path don't exist - create them 


#   ^ ^ ^ ^ Files ^ ^ ^ ^ 

touch my_file

vi my_file.txt
vim my_file.txt
nvim my_file.txt


#   ^ ^ ^ ^ Creating File Links (Shortcuts/file references - deleting them won't affect the original) ^ ^ ^ ^

ln my_hard_link_shortcut
ln -s my_regular_link_shortcut


#   ^ ^ ^ ^ ^ Displaying Contents ^ ^ ^ ^ ^

cat file_name 

#   ^ ^ ^ ^ Displaying Options ^ ^ ^ ^

cat -b file_name # Numbering lines

#   ^ ^ ^ Editing Contents ^ ^ ^ 

cat > file_name 


#   ^ ^ ^ Sorting contents ^ ^ ^

sort file_name


#   ^ ^ ^ ^ ^ Counting Contents ^ ^ ^ ^ ^

wc file_name
wc file_1_name file_2_name


#   ^ ^ ^ ^ Searching Contents ^ ^ ^ ^

grep "search_term"
grep -n "search_term" # adding the line numbers of the results
grep -v "search_term" # outputting the rest of results
grep -c "search_term" # wc type command, outs the counter

#   ^ ^ ^ Piping with Grep ^ ^ ^

ls -l | grep search_term 
ls -l | grep search_term | wc # chain piping

#   ^ ^ ^ ^ Copying Files ^ ^ ^ ^ 

cp from_file_name to_file_name

cp -r from_directory_name to_directory_name

#   ^ ^ ^ ^ Moving Files ^ ^ ^ ^

mv file_name_and_path to_directory_path
mv file_name_1_and_path file_name_2_and_path to_directory_path 

#   ^ ^ ^ Renaming Files ^ ^ ^

mv old_file_name new_file_name


#   ^ ^ ^ ^ File deletion ^ ^ ^ ^


rm file_to_delete
rm file_1_to_delete file_2_to_delete

rm -r directory_to_delete # will also remove all it's contents
rm -f file_to_delete # skip the asking and do the remove 

rm -i file_to_delete # Asks nicely 

rmdir directory_to_delete 
rmdir directory_1_to_delete directory_2_to_delete









#   & & & & & & File Permissions & & & & & &


#   ^ ^ ^ ^ ^ Changing File Permissions ^ ^ ^ ^

#   ^ ^ ^ ^ Granting Permissions ^ ^ ^ ^

chmod u+wx my_file
chmod g+wx my_file
chmod o+wx my_file
chmod u+wx,g+wx,o+wx my_file


#   ^ ^ ^ Adding SGID/SUID bit ^ ^ ^

chmod ug+s my_file 

#   ^ ^ ^ ^  Denying Permissions ^ ^ ^ ^

chmod u-wx my_file
chmod g-wx my_file
chmod o-wx my_file
chmod u-wx,g-wx,o-wx my_file


#   ^ ^ ^ ^ Setting Permissions ^ ^ ^

chmod u=wx my_file
chmod g=wx my_file
chmod o=wx my_file
chmod u=wx,g=wx,o=wx my_file

#   ^ ^ ^ Absolute permissions notation ^ ^ ^ 

chmod 300 my_file
chmod 030 my_file
chmod 003 my_file

#   ^ ^ ^ ^ ^ Changing Ownership ^ ^ ^ ^ ^

chown new_user my_file
chgrp new_group my_file

#tar
tar -cfzv mypackage.tar.gz package # compressing





#network
sudo ip neighbor # arp -a equivilent









#   & & & & & & Process Handling & & & & & &

#   ^ ^ ^ ^ ^ Listing Processes ^ ^ ^ ^ ^

ps # Lists all running processes
ps -f # (detailed) full flag

#   ^ ^ ^ ^ Process Termination ^ ^ ^ ^

kill process_id








# pg? more? kill? top? ping? ftp? telnet? finger?
# PART 3 - Advanced Unix
# sed? df? du? mount? groupadd? groupmod? useradd? userdel? logger? trap? 
# man? history? find? 
# Part 4? Part 5?


#   ^ ^ ^ ^ Script Creation ^ ^ ^ ^  

#!/bin/sh
chmod +x my_bash_file.sh
./my_bash_file.sh  


#   ^ ^ ^ ^ Extended Script Creation ^ ^ ^ ^ 
#useful environment variables commands? cal (calender)? password? whoami and who am i? users and who and w?









#   & & & & & & Bash Orientations & & & & & & 

#   ^ ^ ^ ^ ^ Git Bash ^ ^ ^ ^ ^

git --version

git init

git status

git log
git log --oneline
git log --graph --oneline --all # For a Graph visual

#   ^ ^ ^ ^ Commiting ^ ^ ^ ^ 

git stash 
git stash pop
git stash list
git stash 

git add file_to_stage

git commit -m "my_commit_message"
git commit -am "my_commit_message" # Adding and commiting at the same time

#   ^ ^ ^ ^ Config file ^ ^ ^ ^

git config --global user.name "my Name"
git config --global user.email "my@email"

#   ^ ^ ^ ^ Branching ^ ^ ^ ^

git branch # List the existing branches

git branch branch_name
git branch -M new_branch_name # changing name of branch

git diff --staged
git diff commit_id_1 commit_id_2

#   ^ ^ ^ Switching Branches ^ ^ ^

git switch branch_name
git checkout branch_name 

git switch -c branch_name # also moves you to that branch
git checkout -b branch_name # also moves you to that branch

git reflog # goes back to where the head last was

git checkout commit_id # reverts to the commit + moves head pointer
git checkout head 2 # goes 2 places back
git restore file_name # does the same as checkout head 1 for head pointed file

#   ^ ^ ^ Merging Branches ^ ^ ^

git merge branch_to_merge

#   ^ ^ Rebase : Merge-Clean workflow ^ ^ 

git rebase master # rebase to master and not from it
git rebase --continue # after dealing and solving conflicts

#   ^ ^ ^ ^ Working With GitHub ^ ^ ^ ^

git remote -v

git remote add repo_name github_URL
git remote rename old_repo_name new_repo_name

#   ^ ^ ^ Pushing ^ ^ ^

git push

#   ^ ^ Setting up upstream linking process for Pushing ^ ^

git push --set-upstream repo_name branch_name
git push -u repo_name branch_name # the above command's shorthand

#   ^ ^ ^ Cloning ^ ^ ^

git clone github_URL

#   ^ ^ ^ Pulling ^ ^ ^

git pull
git pull repo_name branch_name 

exit







#   ^ ^ ^ ^ ^ Docker CLI Client ^ ^ ^ ^ ^

#   ^ ^ ^ ^ Docker Image Handling ^ ^ ^ ^

docker images 

docker pull # <type>:<image tag(version)> -> (isn't a must, run will pull images it doesn't have locally)

#   ^ ^ ^ ^ Docker Container Handling ^ ^ ^ ^

docker ps      # view all running containers
docker ps -a   # view all containers

docker logs container_id #  or container name

#   ^ ^ ^ Docker Container Running ^ ^ ^

docker run # <type>:<version>
docker run --name # <docker name> -> passing a name for the container
docker run -d # <type>:<version> -> (used to avoid logs filling terminal window) detach flag
docker run -p # <host port to bind to>:<app port> <type>:<version> -> (exposing a container to our local network) publish flag 
docker run -e # <resource path> -> adding an argument to the docker run 

docker stop # <container ID>/<container name> - pause functionality

docker start # <container ID>/<container name> - restart functionality









#   ^ ^ ^ ^ ^ NodeJS Runtime environment ^ ^ ^ ^ ^

#going into the env

node 

# running app in env

node file_name

#npm

npm install 
npm install nodemon
npm install --save-dev nodemon # install on current environment
npm install dotenv

#generating json

npm init -y

#launch scripts

npm start #launching start script
npm run #launching a script






#react

npx create-reate-app my_app

npm start 
# open your browser and navigate to http://localhost:3000/











#   ^ ^ ^ ^ ^ MongoDB Shell ^ ^ ^ ^ ^
# rewrite the comments nicely later

mongosh

# dbs

show dbs

use data_base_name # switching between dbs - if there is no db it will still move there, and create one when elements are added

# colcs

show collections

# crud

# create

db.collection_name.insertOne({})
db.collection_name.insertMany([])
db.collection_name.find({}) # Finding while using an object to searc h with
db.collection_name.find({}, {atr_1: 1}) # Adding another to mention which values are the only ones to be added
# Method Chaining
db.collection_name.find().count() 
db.collection_name.find().limit() 

# update

db.collection_name.updateOne({_id: 123456787654321}, {$set: {rating: 8, pages: 360}})
db.collection_name.updateMany({author: "authors_names"}, {$set: {rating: 8, pages: 360}})

# del

db.collection_name.deleteOne({_id: 123456787654321})  
db.collection_name.deleteMany({author: "author_name"})





# sub of sort - operators

db.collection_name.find({rating: {$gt: 7}}) # all books with a rating of greater than 7
db.collection_name.find({rating: {$lte: 7}}) # less then - equal
# db.collection_name.find({rating: {$or: [{}]}}) # more brackets for or! want to add gt/lt inside? more brackets! 
# db.collection_name.find({rating: {$in: [7, 8]}}) # same as pyhton's in, or covers similar logic but in's looked as more efficient, there's also nin (not in)


# mongodb vars

var name_to_assign = "name"
name_to_assign = "other_name"

exit




#   & & & & & & Resources: Rich API, Libraries, and Frameworks & & & & & &
#   standard lib? gui? 
#   more material : https://www.tutorialspoint.com/unix/unix-special-variables.htm
















#   < < < < < < < <   Procedural Principles   > > > > > > > >   */









#   & & & & & & Libraries & & & & & & 
# what about library database?









# More Material: https://labbots.github.io/bash-utility/functions/date/, library database?









#   & & & & & & Comments & & & & & &

# Single Line comment 









#   & & & & & & Data Streaming & & & & & & 

#   ^ ^ ^ ^ ^ Variable input ^ ^ ^ ^ ^

# input of string - mention the problem of entering a space?

#   ^ ^ ^ ^ ^ Console Output ^ ^ ^ ^ ^ 

echo "Hello World" # standard ouput to terminal
echo hello world # same output







#   & & & & & & Data Streaming & & & & & & 

#   ^ ^ ^ ^ ^ Variable input ^ ^ ^ ^ ^

#   ^ ^ ^ ^ ^ Console Output ^ ^ ^ ^ ^ 









# Literals - Only for Assignments

my_num=1
my_string=the1iswasastring

#   ^ ^ ^ ^ ^ Expressions ^ ^ ^ ^ ^ 

# Literals are all unicode's UTF-8 strings: no integers (and their modifiers), no floats









#   No String Formatting: specifier fields (precision, length, types)



#   & & & & & & Operators & & & & & &


# ::   ^ ^ ^ ^ ^ Assignment Operators ^ ^ ^ ^ ^
first = 1;
# ::   first = 2;


# ::   ^ ^ ^ Multiple Assignment ^ ^ ^


# ::   first_multi_assign = second_multi_assign = 1;
first_multi_assign=0; second_multi_assign=1

# No Conversions in Bash

# ::   ^ ^ ^ ^ ^ Arithmetical Operators ^ ^ ^ ^ ^

# relational: eq(or ==),ne,ls,le,gt,ge, logicl: -a ,-o, !, strings: =, !=, -z, -n, str
# ::   File Test Operators: -b(block)/c(check)/d(directory)/f(ordinary)/g(group id).. file(finish this), finish from here : https://www.tutorialspoint.com/unix/unix-basic-operators.htm
# ::   ----------------------------------------------------------------

a=10; b=5

#   ^ ^ ^ ^ Addition ^ ^ ^ ^ 

first+=0
c=$((a + b))
echo $c

#   ^ ^ ^ ^ Prefix vs Postfix inc/dec operator ^ ^ ^ ^
first_check= 1;
first_check=$((second_check++)) # first_check = 1, second_check = 2 
first_check=$((second_check--)) # first_check = second_check = 1


#   ^ ^ ^ ^ Subtraction ^ ^ ^ ^

second-=1
c=$((a - b))
echo $c


#   ^ ^ ^ ^ Multiplication ^ ^ ^ ^

third*=2
c=$((a * b))
echo $c


#   ^ ^ ^ ^ Division ^ ^ ^ ^

fourth/=3
c=$((a / b))
echo $c


#   ^ ^ ^ ^ Modulo ^ ^ ^ ^

fifth%=4
c=$((a % b))
echo $c


# ::   ^ ^ ^ ^ Order of operations (Arith) ^ ^ ^ ^ 
# ::   what here ? what comes before what? * before / in C?  




# ::   ^ ^ ^ ^ ^ Logical Operators ^ ^ ^ ^ ^
# ::   order of operations ?
# ::   == and != are the least in the order of operations, maybe finish the operations order ladder?
# ::   false and true are exactly 0 and 1

# ::   five == 2;
# ::   (three < five || three < zero);

# ::   // combining logical and arith: (arithmetic operators take precedence)
# ::   /*
# ::   lecture's example:
# ::   int x = 2;
# ::   int y = (x > 5) + 1; // (x > 5) -> 0 -> 0 + 1 = 1

# ::   int a = 2, b;
# ::   ((b = 2) == a) // (b = 2) -> (2) -> 2 == 2 -> 1, trick question: a wierd behaviour of c family languages - assignment returns the assign value, acts as arithmetic

# ::   */

# ::    Overloading literal operators: https://en.cppreference.com/w/cpp/language/user_literal

# No Pointer Operators









#   ^ ^ ^ ^ ^ Variables & & & & & &

# Bash is loosely types

my_num=1
my_string=the1iswasastring

#   ^ ^ ^ ^ Scope Sharing ^ ^ ^ ^

#   ^ ^ ^ Global & Environment Variables ^ ^ ^

#   ^ ^ ^ local variables ^ ^ ^ 




#   ^ ^ ^ Environment Variables ^ ^ ^ 
#printenv where? env? set?

export my_environment_variable=0

#   ^ ^ ^ ^ Shell variables ^ ^ ^ ^

my_local_varaible=1 # variables are by default Shell varaibles(local)

#   ^ ^ ^ ^ ^ Constants ^ ^ ^ ^ ^

# No Constants - compile time (pre-proc macros, defines, enums), or run time. 

#   ^ ^ ^ ^ ^ Pointers ^ ^ ^ ^ ^

# No Pointers - Allocation is irrelevant in compile time, or run time.

#   ^ ^ ^ ^ Arrays ^ ^ ^ ^ 

# no list comprehension in bash?

#   strings?

#   ^ ^ ^ ^ ^ Data Collections ^ ^ ^ ^ ^ 







#   & & & & & & Flow Control & & & & & &

setf_arg=0
s_arg=1
val_of_ptr=2
my_key="abcd"
while_index=3

#   ^ ^ ^ ^ ^ Statements ^ ^ ^ ^ ^ 

# No Labels/Gotos.

#   ^ ^ ^ ^ ^ Conditional Statements & & & & & &

#   ^ ^ ^ ^ If & Else ^ ^ ^ ^ ^

if [ $f_arg == $s_arg]
then # Condition TRUE -> First Procedure
    echo "Both arguments are equal."
else # Condition FALSE -> Second Procedure
    echo "Arguments are not equal."
fi


#   ^ ^ ^ Null Checks ^ ^ ^

if [ -n "$val_of_ptr"]
then
    echo "not null"
else
    echo "null"
fi


#   ^ ^ ^ Nested Ifs ^ ^ ^

if [ $f_arg == $s_arg]
then # Condition TRUE -> First Procedure
    echo "Both arguments are equal."
else # Condition FALSE -> Second Procedure
    if [ $f_arg == $s_arg] # else if logic , same as the else if example below
    then # Condition TRUE -> Second Procedure
        echo "Arguments are not equal."
    fi
fi


#   ^ ^ ^ Else-If ^ ^ ^ 

if [ $f_arg == $s_arg]
then 
    echo "Both arguments are equal."
elif [ $f_arg == $s_arg] # same as the example above
then 
    echo "Arguments are not equal."
fi


#   ^ ^ ^ ^ Case: Switch Like ^ ^ ^ ^ ^

case "$my_key" in
"cde") # First Procedure 
;;
"bcd") # Second Procedure
;;
"abcd") # Third Procedure
;;
*) # Fourth Procedure
;;
esac


#   ^ ^ ^ ^ ^ Loops ^ ^ ^ ^ ^ 

# ::   break? continue?

#   ^ ^ ^ ^ While Loops ^ ^ ^ ^

while [ $while_index -le 4 ]; # condition checking BEFORE the procedure ran
do
    # while procedure 
done


#   ^ ^ ^ Do-While Loops ^ ^ ^

# ::   int do_while_index = -1;
# ::   do
# ::   {
# ::       ++do_while_index;
# ::       // do-while procedure
# ::   } while(do_while_index <= 5); //condition checking AFTER the procedure ran


#   ^ ^ ^ ^ For Loops ^ ^ ^ ^

# ::   for(int for_index = 0; for_index <= 5 ; ++for_index) // same as above examples
# ::   {
# ::     for procedure
# ::   }



#   ^ ^ ^ ^ Empty portions in for loop ^ ^ ^ ^
# ::   no init? not condition? no counter?

# ::   for(;;)
# ::   for(;;)
# ::   for(;;)

# ::   }

#   ^ ^ ^ ^ ^ Functions ^ ^ ^ ^ ^ 

# ::   int int_return_function(){}
# ::   also_int_return_function(){} // defualt int type - though may cause a warning

# ::   ^ ^ ^ ^ Function prototyping ^ ^ ^ ^

# ::   void void_prtp_func_1(); // function declaration
# ::   void void_prtp_func_2();
# ::   main procedure
# ::   void void_prtp_func_1(){ return; } // function definition
# ::   void void_prtp_func_2(){} // in void functions - the return statement may be omitted and the function will return in closing block

# ::   add to tablet: 1. static stack segment layout (building the stack) + dynamic stack segment allocation in function calls (changing the values and releasing the layout parts) 


# ::   ^ ^ ^ ^  Argument Passing ^ ^ ^ ^ 

# ::   ^ ^ ^ Passing By Value ^ ^ ^

# ::   void pass_by_value(int val){}

# ::   ^ ^ ^ Passing By Adress ^ ^ ^

# ::   void pass_by_adress(int* adr){}
# ::   add this - pass_by_adress_2(int adr[]){} ? or in the array section ? 


# ::   anon function? from version 11? what's the syntax?

# ::   ^ ^ ^ ^ Recursive Functions ^ ^ ^ ^

# ::   void rec_func(){rec_func();} // infinite loop logic


# ::   ^ ^ ^ ^ Pointer Functions ^ ^ ^ ^
# ::   finish this from lecture 12







# ::   & & & & & & Structs & & & & & &

# ::   files? 

# ::   & & & & & & Classes & & & & & &


# ::   < < < < < < < <   Design Principles   > > > > > > > >   */

# ::   & & & & & & Procedural Design & & & & & &  

# ::   ^ ^ ^ ^ ^ Procedures: Implemented as Functions ^ ^ ^ ^ ^
# ::   ^ ^ ^ ^ ^ Sequence/Execution control: Control Flow section's tools (if,else-if, for etc...) ^ ^ ^ ^ ^
# ::   ^ ^ ^ ^ ^ Scope Modularity(?): Each function variable has a local scope ^ ^ ^ ^ ^ 
# ::   ^ ^ ^ ^ ^ Single Responsibility Modularity: one function takes care of one functional requirement ^ ^ ^ ^ ^
# ::   ^ ^ ^ ^ ^ Message Passing: Function invocation ^ ^ ^ ^ ^
# ::   ^ ^ ^ ^ ^ Abstraction: each function invocation is a black box ^ ^ ^ ^ ^
# ::   ^ ^ ^ ^ ^ Supports TDD: using the function, and then impementing

