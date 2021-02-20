# frozen_string_literal: true
require 'httparty'
require 'pry'
require 'dotenv'
Dotenv.load


#require "../.env"
require_relative "./plant_species/version.rb"
require_relative "./plant_species/api.rb"
require_relative "./plant_species/plant.rb"
require_relative "./plant_species/cli.rb"

module PlantSpecies
  class Error < StandardError; end
  # Your code goes here...
end

