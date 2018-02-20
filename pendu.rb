def afficherPendu(n)
  case n
    when 1 then puts "-"
    when 2 then puts "|\n|\n|\n-"
    when 3 then puts "-----\n|\n|\n|\n|\n-"
    when 4 then puts "-----\n|/\n|\n|\n|\n-"
    when 5 then puts "-----\n|/ |\n|\n|\n|\n-"
    when 6 then puts "-----\n|/ |\n| o\n|\n|\n-"
    when 7 then puts "-----\n|/ |\n| o\n| |\n|\n-"
    when 8 then puts "-----\n|/ |\n| o\n| -|-\n|\n-"
    when 9 then puts "-----\n|/ |\n| o\n| -|-\n| /\n-"
    when 10 then puts "-----\n|/ |\n| o\n| -|-\n| / \\n-"
  end
end

def initMot(mot)
  init = ""+mot[0]
  taille = mot.size - 2
  taille.times do
    init+="*"
  end
  init+mot[mot.size - 1]
end

def replace(mot, ch, c)
  temp = ""
  i = 0
  ch.size.times do
    if mot[i] == c
      temp+=c
    else
      temp+=ch[i]
    end
    i+=1
  end
temp
end

def joue(mot)
  chaine = initMot mot
  puts chaine
  nbFautes = 0
  interieur = mot[1, mot.size - 1]
while mot != chaine and nbFautes < 10
  puts "Entrez une lettre"
  c = gets[0]
    if !interieur.index c
    nbFautes+=1
    afficherPendu nbFautes
  end
  if nbFautes == 10
    puts "Vous avez perdu"
  else
    chaine = replace(mot,chaine,c)
    puts chaine
    if mot == chaine
      puts "Vous avez gagné"
    end
  end
end
end
puts "Veuillez entrer un mot"
mot = gets
1000.times do
  puts ""
end
joue mot