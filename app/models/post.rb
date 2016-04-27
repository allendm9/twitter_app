class Post < ActiveRecord::Base
  
  has_many :comments, dependent: :destroy
  
  validates :text, presence: true,
                   length: {minimum: 5}
end
