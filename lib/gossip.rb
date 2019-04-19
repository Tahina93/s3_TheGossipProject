require 'csv'

class Gossip
  attr_reader :author, :content
  
  def initialize(params)
  	@content = params["content"]
  	@author = params["author"]
  end

  def save 
  	CSV.open("./db/gossip.csv", "a+") do |row|
  	row << [@author, @content]
    end
  end

  def self.read
    CSV.read("./db/gossip.csv") 
  end

  def self.destroy_gossip

  	gossips = self.read
  	view = View.new
  	view.index_gossips(gossips)
  	print ">"
  	choice = gets.chomp.to_i - 1
  	gossips.delete_at(choice)

    file = File.open('./db/gossip.csv', 'w') {|file| file.truncate(0) }
    #file.close
    
  	gossips.each {|gossip|
      puts gossip.inspect
  	  CSV.open("./db/gossip.csv", "a+") {|row|
  	    row << [gossip[0], gossip[1]]}
      
    }

  end

end
