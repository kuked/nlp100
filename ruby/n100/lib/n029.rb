require 'net/http'
require 'uri'
require 'json'

def national_flag_image_url(file_name)
  url = "https://www.mediawiki.org/w/api.php"

  uri = URI.parse(url)
  uri.query = URI.encode_www_form(
    action: 'query',
    format: 'json',
    prop: 'imageinfo',
    iiprop: 'url',
    titles: "File:#{file_name.gsub(' ', '_')}"
  )

  res = Net::HTTP.get_response(uri)
  if res.code == "200"
    JSON.parse(res.body)['query']['pages']['-1']['imageinfo'][0]['url']
  end
end
