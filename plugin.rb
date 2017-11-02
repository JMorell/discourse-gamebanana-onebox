class Onebox::Engine::GameBananaOnebox
	include Onebox::Engine

	REGEX = /^https?:\/\/(?:www\.)?gamebanana\.com\/?(.*)\/(\w+)/
	matches_regexp REGEX

	def category
		@url.match(REGEX)[1]
	end
	
	def id
		@url.match(REGEX)[2]
	end
	
	def to_html
		"<a href=\"//gamebanana.com/#{category}/#{id}\"><img alt=\"Share banner\" src=\"//gamebanana.com/#{category}/embeddables/#{id}?type=large\"/></a>"
	end
end