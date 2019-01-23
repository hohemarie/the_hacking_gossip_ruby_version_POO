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
  def index_gossips(gossips)
    gossips.each do |gossip|
      puts gossip
    end
  end
end

class Gossip
  attr_reader :author, :content
#array dobjets de la classe Gossip  
  def initialize(author, content)
    @content = content
    @author = author
  end
  def self.all
    # creation d une array vide qui s appelle all_gossips
    all_gossips = []
    # chaque ligne de ton CSV.each do |ligne|
    # methode self.all qui va lire chaque ligne du CSV
    # ruby lire chaque ligne CSV 
    #fichier = File.open("fichier.csv","r") 
    File.open('fichier.csv','r')
      CSV.foreach(f,col_sep:"\t") do |csv_row|
        #lire la ligne du fichier csv
      end
  end
  def destroy
    print "quel potin voulez vous supprimer"
    potin = gets
    #retirer ce potin du csv
  end
end

def save 
  my_gossip = File.open("gossip.csv","a")
#  Gossip.new(author, content) >> my_gossip
# le fichier necrit pas correctement les informations separees par une virgule dans le csv pour l'instant
  my_gossip.save
end
