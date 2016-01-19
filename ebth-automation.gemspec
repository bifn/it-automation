Gem::Specification.new do |gem|
  gem.name        = 'ebth-automation'
  gem.version     = '0.1.0'
  gem.licenses    = ['MIT']
  gem.date        = '2016-01-19'
  gem.summary     = 'Scripts to handle IT automation.'
  gem.description = 'Scripts that install applications on EBTH Mac computers.'
  gem.authors     = ['Zan Loy', 'Brian Cerchio']
  gem.email       = ['zan.loy@gmail.com', 'brian.cerchio@gmail.com']
  gem.homepage    = 'https://www.ebth.com'
  gem.files       = # example.gemspec

directory = File.dirname File.expand_path __FILE__
dotfiles = %w(.gitignore)
ignore_file = '.gitignore'
file_list = []

Dir.chdir directory do
  ignored = File.readlines(ignore_file).map(&:chomp).reject { |glob| glob =~ /\A(#|\s*\z)/ }
  file_list.replace Dir['**/**'] + dotfiles
  file_list.delete_if do |file|
    File.directory?(file) or ignored.any? { |glob| File.fnmatch? glob, file }
  end
end

# Later...

gem.files = file_list

#`git ls-files`.split("\n") - %w[.gitignore]
  gem.executables = ['ebth-configure']

  gem.add_runtime_dependency 'colorize', '~> 0'
  gem.add_runtime_dependency 'command', '~> 1.0.0', '>= 1.0.0'
  gem.add_runtime_dependency 'daybreak', '~> 0.3', '>= 0.3.0'
  gem.add_runtime_dependency 'github_api', '~> 0.12', '>= 0.12.3'
  gem.add_runtime_dependency 'highline', '~> 1.7'
end
