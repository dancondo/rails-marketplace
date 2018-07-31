class Post < ApplicationRecord
  belongs_to :currency
  belongs_to :user
end
