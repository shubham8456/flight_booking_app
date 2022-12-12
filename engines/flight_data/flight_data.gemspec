$:.push File.expand_path("lib", __dir__)

# Maintain your gem's version:
require "flight_data/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |spec|
  spec.name        = "flight_data"
  spec.version     = FlightData::VERSION
  spec.authors     = ["Shubham Rawat"]
  spec.email       = ["shrawat@plansource.com"]
  spec.homepage    = "https://www.github.com/shubham8456"
  spec.summary     = "FlightData Engine is an app to store and display the data of Flights available in India."
  spec.description = "Description of FlightData will come here."
  spec.license     = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  spec.add_dependency "rails", "~> 5.2.8", ">= 5.2.8.1"

  spec.add_development_dependency "mysql2"
end
