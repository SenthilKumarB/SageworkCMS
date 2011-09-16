class Comment < ActiveRecord::Base
	belong_to :article
end
