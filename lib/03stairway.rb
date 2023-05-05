

# la fonction pour lancer le dé
def lance_dé()
	return rand(1..6)
end


# La fonction pour actualisé le marche en fonction du resultat de dé lancer
def evenement_after(result)
	if result == 5 || result == 6
		return 1	
	elsif result == 4 || result == 3 || result ==2
		return 0
	else
		return -1
	end
end


# la fonction pour afficher un petit menu 
def menu()
	puts "\n\t\t1-Pour lance le dé"
	puts "\t\t2-Pour quitter"
	print "\t\tVotre choix > "
	return gets.chomp.to_i
end

marche = 0
test = 1
while test <= 10
	choix = menu()
	if choix == 1
		retour = evenement_after(lance_dé())
		marche += retour
		if retour == 1
			puts "\nVous avancez d'une marche et vous êtes presentement a: #{marche}"
		elsif retour == -1
			puts "\nVous reculez d'une marche et vous êtes presentement a: #{marche}"
		else
			puts "\nVous restez sur place et vous êtes presentement a: #{marche}"
		end
	elsif choix == 2
		break
	else
		puts "Votre choix est valide"
	end

	puts "\t\tIl vous reste #{10 - test} essai"
	test += 1 
end

if marche == 10
	puts "\nFelicitation vous avez --GAGNE--  :)"
else
	puts "\nDommage! :("
end