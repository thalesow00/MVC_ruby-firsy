require_relative "controller"

class Router
  def initialize
    @controller = Controller.new
  end

  def perform
    puts "Bienvenue dans The Gossip Projet"

    while true
      puts " Tu veux faire quoi ?"
      puts "1. Je veux creer un gossip"
      puts "4. Je veux quitter l'app"
      params = gets.chomp.to_i
      
      case params 

      when 1
        puts "Tu as choichi de creer un gossip"
        @controller.create_gossip

      when 4
        puts "A bientot !"
      when 5 
        puts " Supprimer complètement le fichier CSV"
      when 6 
        puts " Vider le contenu du fichier CSV"

        break

      else
        puts "Ce choix n'existe pas, merci de ressayer"
      end
    end
  end

  

end