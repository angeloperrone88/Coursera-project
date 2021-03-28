readme:
	rm README.md
	touch README.md
	echo "Guessing Game assignment project." >> README.md
	echo "---------------------------------" >> README.md
	echo "Date: " >> README.md
	date  >> README.md
	echo "---------------------------------" >> README.md
	echo "Number of lines on guessinggame.sh: " >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md	
	echo "---------------------------------"
