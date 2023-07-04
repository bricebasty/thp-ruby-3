def play
  step = 0
  until step == 10
    puts "Entrée pour Lancer le dé / X pour Quitter"
    input = gets.chomp
    if input == ""
      dice = rand(1..6)
      if dice == 1 && step > 0
        step -= 1
        puts "Oh non ! Tu redescends à la marche #{step}.\n\n"
      elsif (dice >= 2 && dice <= 4) || (dice == 1 && step == 0)
        puts "Rien ne se passe... tu restes à la marche #{step}.\n\n"
      else
        step += 1
        puts "Let's gooo ! Tu montes à la marche #{step}.\n\n"
        if step == 10
          print "Tu as gagné !"
        end
      end
    elsif input == "X" || input == "x"
      exit
    end
  end
end

def simulation
  step = 0
  turns = 0
  until step == 10
    dice = rand(1..6)
    if dice == 1 && step > 0
      step -= 1
      turns += 1
    elsif (dice >= 2 && dice <= 4) || (dice == 1 && step == 0)
      turns += 1
    else
      step += 1
      turns += 1
      if step == 10
        return turns
        exit
      end
    end
  end
end

def calculate_average(array)
  sum = array.sum
  average = sum.to_f / array.length
  return average
end

def average_turns
  turns_array = []
  100.times do
    simulation_turns = simulation
    turns_array << simulation_turns
  end
  puts "Le nombre de tours moyen pour arriver à la 10e marche est de #{calculate_average(turns_array)}"
end

def perform
  puts "J pour Jouer - M pour voir la Moyenne"
  print "> "
  input = gets.chomp
  if input == "J" || input == "j"
    play
  elsif input == "M" || input == "m"
    average_turns
  end
end

perform