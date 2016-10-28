Gem::Specification.new do |s|
  s.name        = 'map-rec'
  s.version     = '0.0.9'
  s.date        = Date.today.to_s
  s.license     = 'Unlicense'

  s.summary     = 'nginx.conf generator'
  s.description = 'nginx.conf generator with pretty DSL'

  s.authors     = ['Yota Toyama']
  s.email       = 'raviqqe@gmail.com'
  s.homepage    = 'https://github.com/raviqqe/map-rec.rb'

  s.add_dependency 'block-is-hash', '~> 0'

  s.files       = Dir['lib/**/*']
end
