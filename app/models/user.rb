class User < ApplicationRecord

	has_many :comments
	has_many :links
	has_many :under_comments
end
