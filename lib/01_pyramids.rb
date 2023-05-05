# Construction des pyramide montant


def half_pyramid() 
	puts "\nSalut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"
	print ">"
	scale = gets.chomp.to_i

	while scale < 1 || scale > 25
		puts "\nVeuillez saisir un nombre compri entre 1 et 25"
		print ">"
		scale = gets.chomp.to_i
	end

	for i in (1..scale)
		print " "*(scale - i)
		for j in (1..i)
			print "#"
		end
		puts ""
	end
end


# le deuxieme pyramide
def full_pyramid()
	puts "\nSalut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"
	print ">"
	scale = gets.chomp.to_i

	while scale < 1 || scale > 25
		puts "\nVeuillez saisir un nombre compri entre 1 et 25"
		print ">"
		scale = gets.chomp.to_i
	end

	k = 2*scale -2
	for i in (1..scale)
		for j in (1..k)
			print " "
		end
		k = k-1

		for j in (1..i)
			print "#"
			print " "
		end
		puts "\r"
	end
end



# le troisieme pyramide
def wtf_pyramid()
	puts "\nSalut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu(un nbe impaire) ?"
	print ">"
	scale = gets.chomp.to_i

	while (scale < 1 || scale > 25)
		puts "\nVeuillez saisir un nombre impaire compri entre 1 et 25"
		print ">"
		scale = gets.chomp.to_i
	end

	while (scale%2 != 1)
		puts "\nSaisir un nombre impaire"
		print ">"
		scale = gets.chomp.to_i
	end

	
	k = 2*scale -2
	for i in (1..scale)
		for j in (1..k)
			print " "
		end
		k = k-1
		for j in (1..i)
			print "#"
			print " "
		end
		puts "\r"
	end


	k = scale -2
	i = scale -1
	while i >= 0
		for j in (-1..k)
			print " "
			j -= 1
		end
		k = k+1
		j = i
		while j>=1
			print "#"
			print " "
			j -= 1
		end
		puts "\r"
		i -= 1
	end
end


half_pyramid()

full_pyramid()

wtf_pyramid()