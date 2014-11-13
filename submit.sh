if [ $# -eq 0 ] # '$#' return the number of argument
	then echo "Usage: submit.sh commit_message"
else
	git add .
	git commit -m "$1"
	git push -u origin master
fi
