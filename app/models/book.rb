class Book < ActiveRecord::Base
	validates :name, presence: true
	validates :name, uniqueness: true
	validates :author, presence: true
	validates :name, length: { minimum: 2 }
before_save :merge_names
after_destroy :update_log


def merge_names
	self.name = self.name + " By " + self.author
end

def update_log
	logger.error "==================================== Alas! A book has been deleted with ID #{self.id} with name #{self.name}====================================="
end
	
end
