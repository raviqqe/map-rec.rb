require 'rake/clean'



TMP_DIR = 'tmp'


task :build do
  sh %q(gem build *.gemspec)
end

task :push => :build do
  sh %q(gem push *.gem)
end

task :install => :build do
  sh %q(gem install *.gem)
end

task :test => :install do
  Dir.glob('examples/*.rb').each do |file|
    ruby file
  end
end

task :default => :build


CLEAN.include Dir.glob ['*.gem']
