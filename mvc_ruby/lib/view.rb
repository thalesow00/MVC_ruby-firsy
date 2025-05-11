class View
  def ask_gossip
    puts "Auteur du gossip ?"
    print "> "
    author = gets.chomp

    puts "Contenu du gossip ?"
    print "> "
    content = gets.chomp

    { author: author, content: content }
  end

  def display_gossips(gossips)
    puts "Liste des potins :".colorize(:cyan)
    gossips.each_with_index do |gossip, index|
      puts "#{index + 1}. #{gossip.author}: #{gossip.content}".colorize(:yellow)
    end
  end

  def ask_gossip_to_delete
    puts "Quel gossip veux-tu supprimer (numéro) ?"
    print "> "
    gets.chomp.to_i - 1
  end
end
