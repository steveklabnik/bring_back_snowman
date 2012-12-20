# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'bring_back_snowman/version'

Gem::Specification.new do |gem|
  gem.name          = "bring_back_snowman"
  gem.version       = BringBackSnowman::VERSION
  gem.authors       = ["Steve Klabnik"]
  gem.email         = ["steve@steveklabnik.com"]
  gem.description   = %q{You know you miss this little guy: ☃.}
  gem.summary       = %q{You know you miss this little guy: ☃.}
  gem.homepage      = "https://github.com/steveklabnik/bring_back_snowman"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end
