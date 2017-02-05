require File.expand_path('../lib/html_item_parser/version', __FILE__)

Gem::Specification.new do |s|
  s.name          = 'html-item-parser'
  s.version       = HtmlItemParser::VERSION
  s.platform      = Gem::Platform::RUBY
  s.date          = '2017-02-04'
  s.summary       = 'Parse a html page for different items'
  s.description   = 'Parse a html page for different items'
  s.authors       = ['Viacheslav Voytovich']
  s.email         = ['voytovich.slava@gmail.com']
  s.homepage      = 'https://github.com/Vslava/html-item-parser'
  s.license       = 'MIT'
  s.files         = Dir['{lib}/**/*.rb', '*.md']
  s.test_files    = s.files.grep(/\Aspec\//)
  s.require_path  = 'lib'
  s.add_dependency 'httparty', '>= 0.14.0'
  s.add_dependency 'nokogiri', '>= 1.7.0.1'
  s.required_ruby_version = '>= 2.3.0'
end
