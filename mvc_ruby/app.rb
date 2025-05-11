# On requiert toutes les classes nécessaires au fonctionnement du projet
require "bundler"
Bundler.require

require_relative "lib/router"

# On crée une instance du routeur et on lance l'application
Router.new.perform
