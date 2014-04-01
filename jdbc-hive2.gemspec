Gem::Specification.new do |s|
  s.name        = 'jdbc-hive2'
  s.version     = '0.11.0.1'
  s.authors     = ['Josh Ferguson']
  s.email       = %w(josh@modeanalytics.com)
  s.homepage    = 'https://github.com/mode/jdbc-hive2'
  s.summary     = %q{Hive2 JDBC driver for JRuby}
  s.description = %q{Use this driver to connect to Hive and Impala clusters}

  s.rubyforge_project = 'jdbc-hive2'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = %w(lib)

  s.add_development_dependency 'rake'
  s.add_development_dependency 'rspec'

  s.add_development_dependency 'sequel'
end
