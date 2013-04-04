Gem::Specification.new do |gem|
  gem.authors       = ["Victor Shepelev"]
  gem.email         = ["zverok.offline@gmail.com"]
  gem.homepage      = "https://github.com/zverok/sequel_marginalia"

  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {spec,test}/*`.split("\n")
  gem.name          = "sequel_marginalia"
  gem.require_paths = ["lib"]
  gem.version       = "0.0.1"

  gem.add_development_dependency "rake"
  gem.add_development_dependency "sequel"
  gem.add_development_dependency "sqlite3"
  gem.add_development_dependency "rspec"

  gem.summary = description = %q{Attach comments to your Sequel queries.}
end
