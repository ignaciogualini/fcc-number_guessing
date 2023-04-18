#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

echo -e "\nEnter your username:"
read USERNAME

SEARCH_NAME=$($PSQL "SELECT name FROM users WHERE name = '$USERNAME'")


if [[ -z $SEARCH_NAME ]]
then
  INSERT_USER=$($PSQL "INSERT INTO users(name) VALUES('$USERNAME')")
  echo "Welcome, $USERNAME! It looks like this is your first time here."
else
  GAMES_COUNT=$($PSQL "SELECT COUNT(*) FROM games INNER JOIN users USING(user_id) WHERE name = '$USERNAME'")
  SELECT_PB=$($PSQL "SELECT MIN(result) FROM games INNER JOIN users USING(user_id) WHERE name = '$USERNAME'")
  echo "Welcome back, $USERNAME! You have played $GAMES_COUNT games, and your best game took $SELECT_PB guesses."
fi

SECRET_NUMBER=$(( $RANDOM % 1000 + 1 ))
X=1

SECRET_GUESS=0
GUESSER(){
  read SECRET_GUESS

  while [[ $SECRET_GUESS =~ ^([0-9]+)$ && ! $SECRET_GUESS = $SECRET_NUMBER ]]
  do
    X=$(( $X + 1 ))

    if [[ $SECRET_GUESS -gt $SECRET_NUMBER ]]
    then
      echo -e "\nIt's lower than that, guess again:"
      read SECRET_GUESS
    elif [[ $SECRET_GUESS -lt $SECRET_NUMBER ]]
    then
      echo -e "\nIt's higher than that, guess again:"
      read SECRET_GUESS
    fi
  done

  if [[ ! $SECRET_GUESS =~ ^([0-9]+)$ ]]
  then
    echo -e "\nThat is not an integer, guess again:"
    X=$(( $X + 1 ))
    GUESSER
  fi
}

echo -e "\nGuess the secret number between 1 and 1000:"
GUESSER

SELECT_USER_ID=$($PSQL "SELECT user_id FROM users WHERE name = '$USERNAME'")
INSERT_RESULTS=$($PSQL "INSERT INTO games(user_id, result) VALUES($SELECT_USER_ID, $X)")
echo "You guessed it in $X tries. The secret number was $SECRET_NUMBER. Nice job!"
