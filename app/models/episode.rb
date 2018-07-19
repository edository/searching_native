class Episode < ApplicationRecord
	belongs_to :category

	def self.title(title)
		where('title like ?', "%#{title}%")	
	end

	def self.category_id(id)
		where(category_id: id)
	end

end