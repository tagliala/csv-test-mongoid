class Post
  include Mongoid::Document

  field :email, type: String

  validates :email, presence: { message: "email cannot be blank" },
                    format: { with: /\A[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]+\z/, message: 'Please enter a valid email' }

  validates_uniqueness_of :email
end
