#!/bin/bash

# Fonction pour compter le nombre de fichiers
function count_files {
  echo $(ls -1 | wc -l)
}

correct_number=$(count_files)
guess=-1

echo "Combien de fichiers se trouvent dans le répertoire actuel ?"

while [[ $guess -ne $correct_number ]]
do
  read guess
  if [[ $guess -lt $correct_number ]]
  then
    echo "Trop bas. Essaie encore :"
  elif [[ $guess -gt $correct_number ]]
  then
    echo "Trop haut. Essaie encore :"
  else
    echo "Félicitations ! Tu as trouvé le bon nombre de fichiers : $correct_number"
  fi
done
