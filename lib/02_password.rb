def signup
  puts "Définis un mot de passe"
  print "> "
  gets.chomp
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
  if input_password == stored_password
    return true
  end
end

def welcome_screen(login)
  if login == true
    puts "Bienvenue dans ton espace top secret"
    puts "- Ta femme te trompe"
  end
end

def perform
  welcome_screen(login(signup))
end

perform