# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)

Gem::Specification.new do |s|
  s.name        = "gem-etags"
  s.version     = "1.0.1"
  s.authors     = ["Jose Pablo Barrantes"]
  s.email       = ["xjpablobrx@gmail.com"]
  s.homepage    = "https://github.com/jpablobr/gem-etags"
  s.summary     = %q{Automatic etags generation on gem install}

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
