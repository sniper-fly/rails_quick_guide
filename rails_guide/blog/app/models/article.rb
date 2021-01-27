class Article < ApplicationRecord
	has_many :comments, dependent: :destroy
	validates :title, presence: true, length: {minimum: 5}
	# presenceは指定された属性が空でないことを確認する
end
