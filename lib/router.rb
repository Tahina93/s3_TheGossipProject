require 'controller'

class Router
  
  attr_accessor :controller

  def initialize
  	@controller = Controller.new
  end

  def perform
    puts "BIENVENUE DANS THE GOSSIP PROJECT !! "

    while true
      puts "\n ----------------------------- \n"
      puts "Tu veux faire quoi jeune mouss' ?"
      puts "1. Je veux créer un gossip"
      puts "2. Afficher tous les gossips"
      puts "3. Supprimer un gossip"
      puts "4. Je veux quitter l'app"
      puts " "
      print ">"
      params = gets.chomp.to_i
      puts " "

      case params
      when 1
      	puts "Tu as choisi de créer un gossip"
      	@controller.create_gossip
      	gets

      when 2
      	puts "Voici la liste des gossips.. Attention les yeux"
      	@controller.index_gossips
      	gets

      when 3
      	puts "Choisis quel gossip tu souhaite supprimer :"
      	@controller.destroy_gossip
      	gets

      when 4
      	puts "À bientôt !"
      	break

      else
      	puts "Ce choix n'existe pas, merci de ressayer !"
      end
    
    end

  end

end