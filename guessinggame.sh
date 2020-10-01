function guess {
	if [[ $answer -gt $(ls | wc -l) ]]
	then
		echo "Too high"
	else
		echo "Too low"
	fi

	echo "Incorrect please guess again"
	read answer
}

echo "How many files are in this directory?"
read answer

if [[ ! $answer -eq $(ls | wc -l) ]]
then
	while [[ ! $answer -eq $(ls | wc -l) ]]
	do
		guess
	done
fi

echo "Congratulations you guessed correctly"

