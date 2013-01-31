require 'nokogiri'

module HTMLFilter
  def strip_html(input)
    Nokogiri::HTML(input).text
  end
end
