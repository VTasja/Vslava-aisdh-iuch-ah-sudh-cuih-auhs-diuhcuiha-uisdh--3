require 'spec_helper'

RSpec.describe HtmlItemParser do
  describe '#get_imgs' do
    it 'gets the image urls successfuly' do
      # http://aaa.ru was registered in spec_helper
      list = HtmlItemParser.get_imgs('http://aaa.ru')
      expect(list).to contain_exactly(
        '/img/image1.jpg',
        '/img/image2.jpg',
        '/img/image3.jpg'
      )
    end

    it 'gets an exception if the url is failed' do
      expect { HtmlItemParser.get_imgs('aaa') }.to raise_error(HtmlItemParser::Error)
    end

    it 'gets an exception if the url is ok but the site is not exist' do
      expect { HtmlItemParser.get_imgs('http://www.ru') }.to raise_error(HtmlItemParser::Error)
    end
  end
end
