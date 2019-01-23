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
