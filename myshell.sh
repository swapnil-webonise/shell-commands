(echo "System hostname:" && uname -n && date ) > assignment.log
(echo "\n") >> assignment.log
(echo "System version:" && cat /etc/*-release && date ) >> assignment.log
(echo "\n") >> assignment.log
(echo "Path to home directory:" && find `pwd` -name home && date ) >> assignment.log
(echo "\n") >> assignment.log
(echo "User:" && who && date ) >> assignment.log
(echo "\n") >> assignment.log
(echo "Group name:" && whoami && date ) >> assignment.log
(echo "\n") >> assignment.log  
(echo "Files in home directory and its subdirectory:" && find . -type f -exec du -k {} \; && date ) >> assignment.log
(echo "\n") >> assignment.log
(echo "Rename all .txt files:" && rename -v s/.txt/_POST.txt/ *.txt && date ) >> assignment.log
(echo "\n") >> assignment.log
(echo "Rename on files which start with 'x' and it is .txt file" && rename -v s/^x*.txt/some.txt/ *.txt && date ) >> assignment.log
(echo "\n") >> assignment.log
(echo "Creating public_html folder and assigning 777 permission" && mkdir public_html && cd public_html && touch readme.txt && chmod 777 readme.txt && ls -l ./public_html/  && date ) >> assignment.log
(echo "\n") >> assignment.log
(echo "Moving first 4 files from assignment to public_html" && ls | head -4 | xargs -I{} mv {} ./public_html && date ) >> assignment.log
(echo "\n") >> assignment.log  
(echo "Copy the public_html folder inside the public_html and then rename it" &&  cp -r public_html public_html && date ) >> assignment.log
(echo "\n") >> assignment.log
