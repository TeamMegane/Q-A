class Likeuser < ActiveRecord::Base
	acts_in_relation with: :follow

	acts_in_relation :source, target: :post, with: :like
end
