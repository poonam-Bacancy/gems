class Article < ApplicationRecord
	acts_as_commentable :public, :private
end
