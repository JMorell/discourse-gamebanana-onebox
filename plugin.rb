# name: Discourse GameBanana Onebox
# about: Adds support for gamebanana maps and skins.
# version: 1.0
# authors: Jordi Morell
# url: https://github.com/JMorell/discourse-gamebanana-onebox

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
		"<a href=\"https://gamebanana.com/#{category}/#{id}\"><img alt=\"Share banner\" src=\"https://gamebanana.com/#{category}/embeddables/#{id}?type=large\"/></a>"
	end
end
