class Post < ActiveRecord::Base
	validates :content, presence: true, length: { maximum: 150 }
	default_scope -> { order(updated_at: :desc) }
end
