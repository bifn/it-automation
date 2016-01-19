Gem::Specification.new do |gem|
  gem.name        = 'ebth-automation'
  gem.version     = '0.0.1'
  gem.licenses    = ['MIT']
  gem.date        = '2016-01-19'
  gem.summary     = 'Scripts to handle IT automation.'
  gem.description = 'Scripts that install applications on EBTH Mac computers.'
  gem.authors     = ['Zan Loy', 'Brian Cerchio']
  gem.email       = ['zan.loy@gmail.com', 'brian.cerchio@gmail.com']
  gem.homepage    = 'https://www.ebth.com'
  gem.files       = `git ls-files`.split("\n") - %w[.gitignore]
  gem.executables = ['ebth-configure']

  gem.add_runtime_dependency 'colorize', '~> 0'
  gem.add_runtime_dependency 'command', '~> 1.0.0', '>= 1.0.0'
  gem.add_runtime_dependency 'daybreak', '~> 0.3', '>= 0.3.0'
  gem.add_runtime_dependency 'github_api', '~> 0.12', '>= 0.12.3'
  gem.add_runtime_dependency 'highline', '~> 1.7'
end
