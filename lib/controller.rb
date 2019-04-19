require 'gossip.rb'
require 'view.rb'

class Controller
  #attr_accessor :view
  
  def initialize
  	@view = View.new
  end

  def create_gossip
  	params = @view.create_gossip
  	gossip = Gossip.new(params)
  	gossip.save
  end

  def index_gossips
  	list_of_gossips = Gossip.read
  	@view.index_gossips(list_of_gossips)
    
  end

  def destroy_gossip
  	Gossip.destroy_gossip
  end


end