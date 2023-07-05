def signup
  puts "Définis un mot de passe"
  print "> "
  stored_password = gets.chomp
  login(stored_password)
end

def login(stored_password)
  puts "Entre ton mot de passe"
  print "> "
  input_password = gets.chomp
  while input_password != stored_password
    puts "Mot de passe erroné"
    puts "Entre ton mot de passe"
    print "> "
    input_password = gets.chomp
  end
  welcome_screen
end

def welcome_screen
  puts "Bienvenue dans ton espace top secret"
  puts "- Ta femme te trompe"
end

signup