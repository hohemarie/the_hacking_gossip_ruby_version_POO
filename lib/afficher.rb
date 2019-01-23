def afficher(numero)
  print "vous souhaitez afficher un potin. de quel potin sagit il , entrez un nombre entier pour le numero du potin svp"
  numero = gets.chomp.to_i
  if numero.to_i.to_s != numero.to_s
    while numero.to_i.to_s != numero.to_s
      print "un nombre entier svp"
      numero = gets.chomp.to_i  
    end
  end


