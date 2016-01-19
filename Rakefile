task :default => [:build]
task :test => [:build, :install]

task :build do
  `gem build ./ebth-automation.gemspec`
end

task :install do
  gem = Dir['*.gem'].last
  `sudo gem install #{gem}`
end

task :push do
  gem = Dir['*.gem'].last
  `gem push #{gem}`
end

task :console do
  exec "irb -r ebth-automation -I ./lib"
end

task :run do
  ruby "-Ilib", 'bin/ebth-configure'
end
