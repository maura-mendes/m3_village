module ApplicationHelper

	def ellipsis(text, limit, default='…')
	  text[0..limit].gsub(/\s\w+\s*$/, default)
	end
end
