

def signup()
	puts "\n\t\t\t\tVeuillez creer un mot de passe"
	print "\t\t\t\t>"
	return gets.chomp
end


def login()
	puts "\n\t\t\t\tVeuillez saisir votre mot de passe"
	print "\t\t\t\t>"
	return gets.chomp
end


def  welcome_screen()
	puts "\n\t\t\t\tBienvenu sur votre espace de travail privée!!"
end


def perform()
	puts "\n\n\t\t\t\t\t=--------------------------------="
	puts "\t\t\t\t\t=                                ="
	puts "\t\t\t\t\t=    ---CREATION DE COMPTE---    ="
	puts "\t\t\t\t\t=       ---------------          ="
	puts "\t\t\t\t\t=--------------------------------="
	pwdC = signup()
	puts "_________________________________________________________________________________________________________________________"

	puts "\n\n\t\t\t\t\t=--------------------------------="
	puts "\t\t\t\t\t=                                ="
	puts "\t\t\t\t\t=   ---CONNEXION - COMPTE---     ="
	puts "\t\t\t\t\t=      ------------------        ="
	puts "\t\t\t\t\t=--------------------------------="
	pwdCo = login()

	compteur = 1
	while pwdC != pwdCo
		puts "Mot de pass incorrect (essai: #{compteur})!!\nSaisir encore:\n\n"
		puts "\n\n\t\t\t\t\t=--------------------------------="
		puts "\t\t\t\t\t=                                ="
		puts "\t\t\t\t\t=   ---CONNEXION - COMPTE---     ="
		puts "\t\t\t\t\t=      ------------------        ="
		puts "\t\t\t\t\t=--------------------------------="
		pwdCo = login()	
		compteur += 1
		if compteur > 2
			puts "Vous avez essayez 3 fois deja!"
			break
		end
	end


	if pwdC == pwdCo
		puts "_________________________________________________________________________________________________________________________"
		puts "\n\n\t\t\t\t\t=--------------------------------="
		puts "\t\t\t\t\t=                                ="
		puts "\t\t\t\t\t=   ---CONNECTÉ - COMPTE---      ="
		puts "\t\t\t\t\t=      -----------------         ="
		puts "\t\t\t\t\t=--------------------------------="
		welcome_screen()
	end
end

perform()