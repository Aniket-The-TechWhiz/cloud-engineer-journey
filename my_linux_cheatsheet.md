**Basic linux commands**

1) pwd (print working directory) for example i am in home/aniket/Downloads
output :- /home/aniket/Downloads

2) cd (change directory) if we want to change the directory we will use cd <directory name> to move to <directory> if want to back from that directory will use cd ..

3) ls (list) it lists the files & the directory in current directory for example :- aniket@aniket-Latitude-7400:~/Downloads$ ls 
output :- my-scripts 'text.txt' ... so on

4) ps (list the running processes)

---

**Files and Directory**

1) mkdir <Directory name> it creates the the new directory 
   mkdir -p <Directory_name/subdirectories> //it create the subdirectories along with main directory 

2) touch <file name> it creates new file in the current directory 

3) nano <file name> it opens the text editor in terminal 

4) cat <file name > it displays the content written in the file 
   more <file name> //shows one page at a time
   less <file name> //shows all content in scrollable form

5) mv <Oldfile name> <Newfile name> to replace the file name also use for moving file from one destination to the another 

6) echo "msg" > text.txt =>create the file and write the msg into it ">"

7) echo "msg" >> text.txt =>appends the msg to the file ">>"

8) rm <file_name> //delete the file without any question 

9) rm -i <file_name> //it will ask the question to remove file or not 

10) rmdir <folder_name> //delete the empty folder it cannot delete the filled folder

11) rm -r <folder_name> //it removes the folder with it's all content inside it 

12) rm -ri <folder_name> //it will ask before deleting the folder 

13) cp <first_file_name> <second_file_name> //copy first content to second
    cp <first_file_name> <folder_name/> //copy the file to folder
    cp -r <folder_name> <another_foldername> //copy one folder recusively to another
    cp -i <first_file_name> <second_file_name> //it will ask question before copy

---

**Command chaining, Redirection & Pipes**

1) mkdir <directory name> && cd <directory name> && touch <file name>  ##"by && we chain the multiple cmd first creating directory then moving to that directory and creating the test.txt into it"

2) ls | wc -l ##"by "|" we can pipe the cmd first it will pipe the files and directory and then return the count of it"
aniket@aniket-Latitude-7400:~/my-scripts$ ls
    my_linux_cheatsheet.md  README.md
aniket@aniket-Latitude-7400:~/my-scripts$ ls | wc -l
    2

---

**Permission & Ownership**

1) chmod cmd is use to change the permissions of the files 
example :- chmod u -x test.sh
output :- -wr-wr--r- test.sh // remove the execution permission is denied

instead of the rwx we can also use the numbers r->4, w->2, x->1
example :- chmod 777 test.sh
output :- rwxrwxrwx test.sh //add all permission to the use group and other 

2) sudo chown root file.txt //it will change the owner of the file 

3) sudo chown root:root file.txt //it will change the owner and also the user also 

##imp :- sudo is linux cmd-line utility that allows authorized users to execute commands with the security privileges of another user

---

**Installing and Managing files**

imp:- apt (Advance package tool)

1) sudo apt update && sudo apt upgrade

2) sudo apt install <package name> //install package

3) sudo apt remove <package name> //uninstall package

4) sudo apt purge <package name> //uninstall package with their configuration and files and all thing related to it 

5) sudo apt autoremove //remove all unused packages clean the disk

---

**Searching, Finding & Filtering**

1) find . -name test.txt
output :- ./test.txt //if it exist 

2) find ~ -name text.txt

3) find . -name "*.<extension>" to find all files with extension //case-sensitive "name"
 
4) find . -iname test.txt //case-insensitive "iname"

5) find . -mtime -1 //shows one day ago modified files 


//Manage user

1) Add user :- sudo adduser <user_name>

2) For entering to that user use :- su - <user_name>

3) For adding the feature to it giving previllages to user :- sudo usermod -aG sudo <user_name>

// Installing Packages in Ubuntu: apt-get, apt, dpkg

sudo apt install tree

sudo apt remove tree 

sudo apt purge tree 

sudo apt-get install tree


