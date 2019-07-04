class Notifier < ApplicationMailer
	
	def alert_admin(book)
		@name = book.name
		@author = book.author
		attachments['file-name.jpg'] = File.read('file-name.jpg')
		mail(:to=>"veni.rails@gmail.com",:subject=>"ALERT - A mail new book has been added!")
	end
	
end
