Gem::Specification.new do |gem|
  gem.name          = 'yaml-parser'
  gem.version       = '1.0'
  gem.authors       = ['Johan Haals']
  gem.email         = 'johan.haals@gmail.com'
  gem.description   = 'YAML Parser'
  gem.summary       = 'Parse all yaml files in a directory and outputs errors'
  gem.homepage      = "http://github.com/jhaals/yaml-parser"
  gem.files         = Dir['lib/*.rb'] + Dir['bin/*']
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.require_paths = ['lib']
end