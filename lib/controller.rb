def create_gossip
  Gossip.new
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
  Gossip.new(author, content) >> my_gossip
  my_gossip.save
end
