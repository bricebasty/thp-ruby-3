def ask_first_name
  puts "Quel est ton prénom ?"
  print "> "
  gets.chomp # inutile de mettre un return car Ruby retourne implicitement la dernière expression
end

def say_hello(first_name)
  puts "Bonjour, #{first_name}!"
end

def perform
  first_name = ask_first_name
  say_hello(first_name)
end

perform