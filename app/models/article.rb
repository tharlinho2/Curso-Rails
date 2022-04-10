class Article < ApplicationRecord
    validates :title, length: {minimum:3, maximum: 60}
    validates :body, length: {minimum:5, maximum:100}
end
