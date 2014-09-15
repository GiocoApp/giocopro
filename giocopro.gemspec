Gem::Specification.new do |s|

  s.name        = 'giocopro'
  s.version     = File.read(File.dirname(__FILE__) + '/VERSION').strip
  s.date        = '2014-09-15'
  s.summary     = "The Gioco Pro gem for Ruby on Rails applications."
  s.description = "Gioco Pro gem is the SDK of Gioco Pro service a easy way to implement gamification based on plug and play concept. Doesn't matter if you already have a full and functional database, Gioco will smoothly integrate everything and provide all methods and analytics that you might need."
  s.authors     = ["Gioco Pro"]
  s.email       = 'admin@gioco.pro'
  s.files       = Dir[ 'lib/*', 'lib/**/*', 'lib/**/**/*', 'init.rb' ]
  s.homepage    = 'http://gioco.pro/'

end
