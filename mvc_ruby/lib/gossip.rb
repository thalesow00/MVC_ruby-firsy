require "csv"

class Gossip
  attr_reader :author, :content

  def initialize(author, content)
    @author = author
    @content = content
  end

  def save
    CSV.open("db/gossip.csv", "a") do |csv|
      csv << [@author, @content]
    end
  end

  def self.all
    gossips = []
    CSV.foreach("db/gossip.csv") do |row|
      gossips << Gossip.new(row[0], row[1])
    end
    gossips
  end

  def self.delete(index)
    gossips = self.all
    gossips.delete_at(index)
    CSV.open("db/gossip.csv", "w") do |csv|
      gossips.each { |gossip| csv << [gossip.author, gossip.content] }
    end
  end
end
require "csv"

class Gossip
  attr_reader :author, :content

  def initialize(author, content)
    @author = author
    @content = content
  end

  def save
    CSV.open("db/gossip.csv", "a") do |csv|
      csv << [@author, @content]
    end
  end

  def self.all
    gossips = []
    CSV.foreach("db/gossip.csv") do |row|
      gossips << Gossip.new(row[0], row[1])
    end
    gossips
  end

  def self.delete(index)
    gossips = self.all
    gossips.delete_at(index)
    CSV.open("db/gossip.csv", "w") do |csv|
      gossips.each { |gossip| csv << [gossip.author, gossip.content] }
    end
  end

  def self.destroy_csv
    fichier = "db/gossip.csv"
    if File.exist?(fichier)
      File.delete(fichier)
      puts "📁 Le fichier '#{fichier}' a été supprimé avec succès !".colorize(:red)
    else
      puts "⚠️ Le fichier '#{fichier}' n'existe pas.".colorize(:yellow)
    end
  end
  



  File.open("db/gossip.csv", "w") { |file| file.truncate(0) }
  File.open("db/gossip.csv", "w") { |file| file.truncate(0) }

end
