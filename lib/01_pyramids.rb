def ask_floors
  puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ? (choisis un nombre impair)"
  print "> "
  gets.chomp.to_i
end

def pyramid(floors)
  hashtag = "#"
  while floors % 2 == 0
    puts "Prends un nombre impair."
    print "> "
    floors = gets.chomp.to_i
  end
  if floors % 2 != 0
    floors.times do |i|
      if i <= floors/2
        line = (hashtag * (2 * i + 1)).center(2 * floors - 1)
        puts line
      elsif i > floors/2
        line = (hashtag * (2 * (floors - i) - 1)).center(2 * floors - 1)
        puts line
      end
    end
  end
end

pyramid(ask_floors)