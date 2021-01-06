# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "tax_cloud/version"

Gem::Specification.new do |s|
  s.name        = "TaxCloud"
  s.version     = TaxCloud::VERSION
  s.authors     = ["Dave Onnen", "Matthew Vince"]
  s.email       = ["donnen@fed-tax.net", "rubillow@matthewvince.com"]
  s.homepage    = "http://rubygems.org/gems/taxcloud"
  s.summary     = "TaxCloud free sales tax calculation gem"
  s.description = "This gem allows you to easily integrate your ruby application with the TaxCloud web service"

  s.rubyforge_project = "TaxCloud"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_development_dependency "rake",      "~> 13.0.3"
  s.add_development_dependency "rspec",     "~> 2.6"
  
  s.add_runtime_dependency "savon",      "~> 0.9"
end
