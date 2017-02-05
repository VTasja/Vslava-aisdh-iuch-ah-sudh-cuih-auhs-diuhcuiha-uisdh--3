
require 'httparty'
require 'nokogiri'
require 'html_item_parser/exceptions'

module HtmlItemParser
  class << self
    def get_imgs(url)
      res = HTTParty.get(url)
      get_image_urls_from_html(res.body)
    rescue => e
      raise HtmlItemParser::Error.new(e.message)
    end

    private

    def get_image_urls_from_html(msg)
      body = Nokogiri::HTML(msg)
      body.css('img').map { |item| item['src'] }
    end
  end
end
