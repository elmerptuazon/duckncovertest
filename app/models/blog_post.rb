class BlogPost < ApplicationRecord
    validates :title, presence: true
    validates :body, presence: true
    validates :author_name, presence: true
    validates :author_email, presence: true
    has_many :feedback
end
