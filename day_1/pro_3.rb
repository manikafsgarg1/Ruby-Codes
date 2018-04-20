# We can Run these commands directly on terminal 
eval "puts 'Hello Manik' "
ruby -e "puts 'Hello Manik' "
#we use single quotes inside of 
#double quotes when using the -e option
ruby -e "puts 'Hello'" -e "puts 'Manik'"
ruby -e "print 'Hello'" -e "puts 'Manik'"
#we use print because it prints in the same line... whenb we use puts it breaks it and goes in next line
ruby -e "number=3; puts 'Manik 3 times ' *3"
#Multiple statements in a single line..