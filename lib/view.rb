class View
  def create_gossip
    params = @view.create_gossip
    puts @auteur
    puts @contenu 
    @auteur = gets.chomp
    @contenu = gets.chomp
    return params = { content:content, author: author }

  end
end
