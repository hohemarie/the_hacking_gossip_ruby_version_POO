require './view.rb'
@view = View.new

class Controller 
  def create_gossip
    params = @view.create_gossip
    Gossip.new
    gossip = Gossip.new("Jean-Michel Concierge","Féfé est de Bordeaux")
    gossip.save
  end
  def index_gossips
    Gossip.all #demander au model un array qui contient tous les potins que l'on a en base
    View.index_gossips.self
  end
end

class Gossip
  attr_reader :author, :content
  
  def initialize(author, content)
    @content = content
    @author = author
  end
end

def save 
  my_gossip = File.open("gossip.csv","a")
#  Gossip.new(author, content) >> my_gossip
# le fichier necrit pas correctement les informations separees par une virgule dans le csv pour l'instant
  my_gossip.save
end
