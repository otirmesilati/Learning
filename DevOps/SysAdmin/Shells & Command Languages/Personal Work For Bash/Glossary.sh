# Yet to find an online CMD emulator









#   < < < < < < < <   Command Principles   > > > > > > > >   */

clear # Screen Clearing

$? # last command succesful?

env # list environment variables

man command # get manual entry (system info) on the command

#   % % % % % % % Frame Handling % % % % % % %

nohup process_exe_path  # detach launch of a frame
nohup process_exe_path & # detach + backgrounf the frame

path_or_command_if_app_to_launch file_to_be_edited_with_app
less my_file.txt
nano my_file.txt
vi my_file.txt
vim my_file.txt
nvim my_file.txt

exit









#   % % % % % % % File System Navigation & & & & & & 

pwd # print current (dubbed working) directory

#   ^ ^ ^ ^ & & & & & & Changing File Directories ^ ^ ^ ^ ^

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

ls --color # sometimes needed, sometimes done by default

ls -1 # Ls'ing 1 file per line in the output


#   ^ ^ ^ ^ Listing Options ^ ^ ^ ^

#    ^ ^ ^ Sorted Options ^ ^ ^

ls -S # Sorts by size
ls -t # Sorts by last modification time
ls -r # Sorts in reverse-to-defualt order

#   ^ ^ ^ Adding Options ^ ^ ^

ls -i # Adds Inode Numbering
ls -s # Adds disc block size

#   ^ ^ ^ More Items Options ^ ^ ^

ls -a # All Directories
ls -d # Directories Only
ls -F # for file types 


#   ^ ^ ^ Detailed Options ^ ^ ^

ls -l # Detailed - User Ownership
ls -g # Detailed - Group Ownership

ls -R # All Directories recursively on child items

ls -lt # combinations


# tree - visualizing ls -R command  

tree 

tree -d # only doing so for directories
tree -C # colorised

#ls l?

# version checking: python -V

#   & & & & & & App Launching

# bashrc command to add: 

chrome --new-window https://www.google.com




#find

find 
find . # same as above

find path_to_search --name file_name
find path_to_search --name "*v" # files ending with a v

find path_to_search -mtime +10 -mtime -90 # between 10 to 90 days old

find path_to_search -size +1M # 1 mega byte or greater

find path_to_search -type d # searches for directories

find path_to_search -newer file_name # searches for files that were created after said file









#   & & & & & & Text Files Content & & & & & &

#   ^ ^ ^ ^ ^ File Creation ^ ^ ^ ^ ^  

#   ^ ^ ^ ^ Folders ^ ^ ^ ^

mkdir my_directory
mkdir my_1_directory my_2_directory # creating many folders
mkdir -p make_all_the_parent_files_in_this_path # (declarative) if any folders in the path don't exist - create them 


#   ^ ^ ^ ^ Files ^ ^ ^ ^ 

touch my_file # create or change permissions

#   ^ ^ ^ ^ Creating File Links (Shortcuts/file references - deleting them won't affect the original) ^ ^ ^ ^

ln my_hard_link_shortcut
ln -s my_regular_link_shortcut


#   ^ ^ ^ ^ ^ Displaying Contents ^ ^ ^ ^ ^

cat file_name 
tac file_name_same_just_print_order_reversed

#   ^ ^ ^ ^ Displaying Options ^ ^ ^ ^

cat -b file_name # Numbering lines

#   ^ ^ ^ Editing Contents ^ ^ ^ 

cat > file_name # control D to save, control C not recommended but might work sometimes


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
rm -f file_to_delete # f:force, skip the asking and do the remove 
rm -vf file_to_delte # v:verbose, prints the items that are deleted

rm -i file_to_delete # Asks nicely 

rmdir empty_directory_to_delete 
rmdir empty_directory_1_to_delete empty_directory_2_to_delete

rmdir -rf directory_to_delete # recursively deletes contents and child contents









#   & & & & & & File Permissions & & & & & &

# persmission checking

groups
id -Gn # alias for groups

groups user_name

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
tar -xvzf mypackage.tar.gz # extracting
unzip mypackage.zip


#network
sudo ip neighbor # arp -a equivilent









#   & & & & & & Process Handling & & & & & &

#   ^ ^ ^ ^ ^ Listing Processes ^ ^ ^ ^ ^

ps # Lists all running processes
ps -f # (detailed) full flag

#   ^ ^ ^ ^ Process Termination ^ ^ ^ ^

kill process_id









#network 
curl my_http_request

ip a

ssh ip_address_or_machine_name
ssh user_name@ip_address # Will be prompted to enter password later
ssh-keygen
ssh-copy-id machine_to_send_key_to

# awk? pg? more? kill? top? ping? ftp? telnet? finger?
# PART 3 - Advanced Unix
# sed? df? du? mount? groupadd? groupmod? useradd? userdel? logger? trap? 
#  history? find? 
# Part 4? Part 5?


#   ^ ^ ^ ^ Script Creation ^ ^ ^ ^  

#!/bin/sh    - first two symbols make up the shebang operator
chmod +x my_bash_file.sh
./my_bash_file.sh  


#   ^ ^ ^ ^ Extended Script Creation ^ ^ ^ ^ 
#useful environment variables commands? cal (calender)? password? whoami and who am i? users and who and w?









#package mans

#apt

apt --version

apt list --installed 











#wsl

wsl --install -d my_distro
wsl --unregister my_distro

wsl --set-default my_distro

wsl -d my_distro # launch distro's shell

wsl -l -o # all online options

wsl -l # what's currently installed
wsl -l -v # including version

wsl bash -c "your-bash-command"









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









#   ^ ^ ^ ^ ^ Docker CLI Client ^ ^ ^ ^ ^

docker context use default # for managing contexts
docker context show

#   ^ ^ ^ ^ Docker Image Handling ^ ^ ^ ^

docker images 

docker rmi image_name_or_id # removing an image from docker

docker pull # <type>:<image tag(version)> -> (isn't a must, run will pull images it doesn't have locally)

#   ^ ^ ^ ^ Docker Container Handling ^ ^ ^ ^

docker ps      # view all running containers
docker ps -a   # view all containers

docker logs container_id #  or container name

#image generation

docker build -t source_path destination_path # looks for a docker file in path 
docker build -t source_path destination_path -f file_name # if theres no file prior

#   ^ ^ ^ Docker Container Running ^ ^ ^

docker run # <type>:<version>
docker run --name docker_name # -> passing a name for the container
docker run -d # <type>:<version> -> (used to avoid logs filling terminal window) detach flag
docker run -p # <host port to bind to>:<app port> <type>:<version> -> (exposing a container to our local network) publish flag 
docker run -e environment_var_or_resource_path # -> an enironment variable to the container 

docker stop # <container ID>/<container name> - pause functionality

docker start # <container ID>/<container name> - restart functionality

#   ^ ^ ^ Docker Container Interface ^ ^ ^

docker exec container_name # entering the machine
docker exec container_name sh # doing it through a bash shell interface
docker exec -it container_name sh # make it stick after command run

#inspect

docker inspect container_name

#overlay

docker network create my_subnet # creating the shared containers network
docker network inspect my_subnet # checking network configuration 

#running in the overlay

docker run -d --name contianer_name --network overlay_name # <type>:<version> 

#docker compose for run command

docker compose up -d

#dockerhub

docker tag repo_name repo_URL_path

#pushing images

docker push image_URL_path

#pulling images

docker pull image_URL_path









#nexus

docker pull sonatype/nexus3

docker login http://localhost:5000 --username jenkins_user_1 --password jenkinsuser1

docker run -d -p 8081:8081 --name nexus_assignment sonatype/nexus3

docker exec -it nexus cat /nexus-data/admin.password






#k8s

kubectl config use-context context_name
kubectl config current-context
kubectl config get-contexts


kubectl cluster-info

#get 

kubectl get pods
kubectl get pods -l label_key=label_value

kubectl describe pod pod_name

kubectl get nodes
kubectl get nodes -o wide # detailed

kubectl describe node node_name

kubectl get services # OR kubectl get svc

kubectl get deployment

kubectl get configmap

kubectl get secret

# deployments? configmaps? sercrets?

#desc

kubectl describe node node_name

kubectl run -it alpine --image=alpine # pod named alpine with alpine image container
kubectl run -it alpine --image=alpine --command -- /bin/sh # runs bash
kubectl run -it --rm alpine --image=alpine --command -- /bin/sh # deletes container after finishing with bash

kubectl delete pod pod_name




kubectl create configmap nginx-config --from-literal=message="Add Text Here"

#deployment component

kubectl scale deployment deployment_name --replicas= #<number of replicas>

kubectl apply -f file_name
#--prune?




minikube start

minikube start --driver=docker

minikube stop

minikube status

minikube ssh

minikube ip

minikube delete









ansible -i hosts servers -m ping # pings machines in "servers" inventory group

ansible servers -m shell -a "ls" # exec interactive shell (ls command) module on servers
ansible servers -a "ls" # same same new name

ansible-playbook playbook_name
ansible-playbook playbook_name --tags=tag_name
ansible-playbook playbook_name --skip-tags=tag_name







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

read my_input # *terminal goes to next line* <text_to_input> ,entering  Alice Bob  will fill the buffer, solution: enter "Alice Bob" instead
read -p "Enter your input:" my_input #display a message 

#   ^ ^ ^ ^ ^ Console Output ^ ^ ^ ^ ^ 

echo "Hello World" # standard ouput to terminal
echo hello world # same output

cut -d ',' -f 1 # cutting off a stream of text before the first ',' 









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

# Bash is loosely typed

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


#   No native do-while loops

for ((for_index=0; for_index<=5; for_index++)); do
    # for procedure
done

for i in {1..5}; do
    # for procedure 
done


#   ^ ^ ^ ^ Empty portions in for loop ^ ^ ^ ^
# ::   no init? not condition? no counter?

for ((;;)); do
    # This is an infinite loop
done

#   ^ ^ ^ ^ ^ Functions ^ ^ ^ ^ ^ 

# No function prototyping in Bash

# ::   ^ ^ ^ ^  Argument Passing ^ ^ ^ ^ 

# ::   ^ ^ ^ Passing By Value (Only type of Argument passing) ^ ^ ^

pass_by_value() {
    local val=$1  # Capture the first argument passed to the function
    # function body
}

# No Anon functions

# No Recursive functions

# No Pointer functions









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

