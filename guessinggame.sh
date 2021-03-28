countfiles=$(ls | wc -l)
#User interaction
echo "How many files do you think there is in that folder?"
read -p 'Please, enter your guess: ' userguess

#Keep the program running until the right guess
while [[ $userguess -lt $countfiles ]] || [[ $userguess -gt $countfiles ]] 
do
#Save the difference between the count of files and user input guessed
diffgc=$(( $userguess - $countfiles ))

 if [[ $userguess -lt $countfiles ]]
 then  if [[ $diffgc -le 2 ]] 
       #Using a nested if so we can tell the user how far or close is the guess
       then echo "Your guess is a little bit lower."
       read -p "Try again: " userguess
       else echo "Too low."
       read -p "Try again: " userguess
       fi

 elif [[ $userguess -gt  $countfiles ]]
 then if [[ $diffgc -le 2 ]] 
       then echo "Your guess is a bit little bit higher."
       read -p "Try again: " userguess
       else echo "Too high."
       read -p "Try again: " userguess
       fi
 fi

done

#Cosmetic feature to use the right words in case of singular file or more
if [[ $countfiles > 1 ]]
 then filestring=$(echo "files")
      verb=$(echo "are")
 else filestring=$(echo "file")
      verb=$(echo "is")
fi 

echo "Congratualtions you guessed the right number! There $verb $countfiles $filestring in that folder."

