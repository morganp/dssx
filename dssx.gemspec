gem_name = 'dssx'
require File.join( File.dirname(__FILE__), 'lib', gem_name )

Gem::Specification.new do |s|
  s.name        = gem_name
  s.version     = Dssx::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Morgan Prior"]
  s.email       = ["morgan@amaras-tech.co.uk"]
  s.homepage    = "https://github.com/morganp/dssx"
  s.license     = "BSD-3-Clause"
  s.summary     = %q{ruby library for dssc revision control system. }
  s.description = %q{ruby library for dssc revision control system.
  Binary dssx included with many commands such as dssx status for short status reports modeled after 'svn status -u' 
  }

  s.files         = `git ls-files`.split("
")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("
")
  s.executables   = `git ls-files -- bin/*`.split("
").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
  s.add_dependency('thor', '~> 0.16.0')
end
