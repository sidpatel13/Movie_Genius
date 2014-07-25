require 'rubygems'
require 'nokogiri'
require 'open-uri'

class LocalScript
	attr_reader :url, :title
	def initialize(title, url)
		@title = title
		@url = url
	end

end

def seed_script(letter)
	scripts_list = link_crawler_letter(letter)
	scripts_list.each do |local_script|
		begin
			film = Nokogiri::HTML(open(local_script.url))
			script = film.search('pre').text
			Script.create(title: local_script.title, plot: script)
	  rescue OpenURI::HTTPError => ex
	  	puts "This script is missing"
	  end 
	end
end

def link_crawler_letter(letter)
	scripts = []
	index_url = "http://www.imsdb.com/feeds/alphabetical.php?letter=#{letter}"
	noko_index = Nokogiri::XML(open(index_url))
	links_list = noko_index.xpath("//link").map{|link| link.text}
	names_list = noko_index.xpath("//title").map{|title| title.text}
	links_list.shift # Remove link that points to home page
	names_list.shift # Remove name that points to home page
	scripts_hash = Hash[names_list.zip(links_list)]
	scripts_hash.each_pair do |title, link|
		scripts << LocalScript.new(title, link)
	end
	return scripts
end

def link_crawler(links_hash = {})
	alphabet = ("A".."Z").to_a
	alphabet.each do |letter|
		links_hash[letter] = link_crawler_letter(letter)
	end
	return links_hash
end



