require 'httparty'
require 'pry'

require 'dotenv'
Dotenv.load


require_relative '../lib/plant_species/api.rb'
require_relative '../lib/plant_species/plant.rb'
require_relative '../lib/plant_species/cli.rb'
require_relative '../lib/plant_species/version.rb'