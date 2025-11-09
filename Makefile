README.md:
	echo "# Projet : Guessing Game" > README.md
	echo "" >> README.md
	echo "Date et heure d'exécution du make : $$(date)" >> README.md
	echo "" >> README.md
	echo "Nombre de lignes de code dans guessinggame.sh : $$(wc -l < guessinggame.sh)" >> README.md

.PHONY: clean
clean:
	rm -f README.md
