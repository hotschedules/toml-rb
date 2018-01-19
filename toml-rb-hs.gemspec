Gem::Specification.new do |s|
  s.name        = 'toml-rb-hs'
  s.version   = ENV.key?('RUBYGEM_VERSION') ? ENV['RUBYGEM_VERSION'] : '1.1.1'
  s.date        = Time.now.strftime('%Y-%m-%d')
  s.summary     = 'Toml parser in ruby, for ruby, modified so it will work with Ruby 1.8.'
  s.description = 'A Toml parser using Citrus parsing library. '
  s.authors     = ['Emiliano Mancuso', 'Lucas Tolchinsky', 'Alex Yamauchi']
  s.email       = ['emiliano.mancuso@gmail.com', 'lucas.tolchinsky@gmail.com', 'alex.yamauchi@hotschedules.com']
  s.homepage    = 'http://github.com/hotschedules/toml-rb-hs'
  s.license     = 'MIT'

  s.files = Dir[
    'README.md',
    'Rakefile',
    'lib/**/*.rb',
    'lib/**/*.citrus',
    '*.gemspec',
    'test/*.*',
  ]

  s.add_runtime_dependency 'citrus', '~> 3.0', '> 3.0'
  s.signing_key = File.expand_path( ENV.key?('RUBYGEM_SIGNING_KEY') ? ENV['RUBYGEM_SIGNING_KEY'] : '~/certs/oss@hotschedules.com.key' ) if $0 =~ /\bgem[\.0-9]*\z/
  s.cert_chain    = %w[certs/oss@hotschedules.com.cert]
end
