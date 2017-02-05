require 'rspec'
require 'fakeweb'
require 'html_item_parser'

RSpec.configure do |config|
  config.before(:suite) do
    FakeWeb.allow_net_connect = false

    webpage_path = File.expand_path('../../website/index.html', __FILE__)
    FakeWeb.register_uri(:get, 'http://aaa.ru', body: File.new(webpage_path).readlines.join("\n"))
  end

  config.after(:suite) do
    FakeWeb.allow_net_connect = true
    FakeWeb.clean_registry
  end

  config.order = :random

  Kernel.srand config.seed
end
