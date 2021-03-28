readme:    
	touch readme.txt
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> readme.md

