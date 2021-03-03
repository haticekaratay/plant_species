# frozen_string_literal: true

require_relative "lib/plant_species/version"

Gem::Specification.new do |spec|
  spec.name          = "plant_species"
  spec.version       = PlantSpecies::VERSION
  spec.authors       = ["Hatice Karatay"]
  spec.email         = ["haticekaraty@gmail.com"]

  spec.summary       = %q{This gem will get you taxonomy of a plant with its complete Kingdom, Family, Genus and Species.}

  spec.homepage      = "https://github.com/haticekaratay/plant_species"
  spec.license       = "MIT"

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{\A(?:test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  
  spec.add_dependency "rake", "~> 13.0"
  spec.add_dependency "httparty"
  spec.add_dependency "pry"
  spec.add_dependency 'dotenv', '~> 2.1', '>= 2.1.1'
  spec.add_dependency "colorize"

end
