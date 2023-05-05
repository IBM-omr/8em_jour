

# La methode pour dire bonjour
def say_hello(first_name)
	puts "Bonjour, #{first_name} !!!"
end


# La methode pour permettre la saisi du prenom
def ask_first_name()
	puts "Saisez votre prenom"
	print ">"
	first_name = gets.chomp
	return first_name
end


# appel des methodes
say_hello( ask_first_name() )