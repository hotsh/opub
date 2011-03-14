# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "opub/version"

Gem::Specification.new do |s|
  s.name        = "opub"
  s.version     = OPub::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ['Hackers of the Severed Hand']
  s.email       = ['hotsh@xomb.org']
  s.homepage    = ""
  s.summary     = %q{This is a simple implementation of a publisher in the PubSubHubbub protocol.}
  s.description = %q{This is a simple implementation of a publisher in the PubSubHubbub protocol.}

  s.rubyforge_project = "opub"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
