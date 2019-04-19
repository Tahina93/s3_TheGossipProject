

class View


  def create_gossip
    puts "Qui est l'auteur de ce gossip ?"
    @author = gets.chomp
    
    puts "Et quel est le gossip en question ?"
    @content = gets.chomp

    return params = {"author" => @author, "content" => @content}
  end

  def index_gossips(list_of_gossips) 	
    list_of_gossips.each_with_index do |gossip, i|
      puts " "
      puts "Gossip n° #{i+1} #{gossip[0]}"
      puts "auteur : #{gossip[1]}"

    end
  end
end