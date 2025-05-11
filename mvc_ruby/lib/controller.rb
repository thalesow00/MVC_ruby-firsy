require_relative "view"
require_relative "gossip"

class Controller
  def initialize
    @view = View.new
  end

  def create_gossip
    info = @view.ask_gossip
    gossip = Gossip.new(info[:author], info[:content])
    gossip.save
  end

  def list_gossips
    gossips = Gossip.all
    @view.display_gossips(gossips)
  end

  def delete_gossip
    gossips = Gossip.all
    @view.display_gossips(gossips)
    index = @view.ask_gossip_to_delete
    Gossip.delete(index)
  end
end
