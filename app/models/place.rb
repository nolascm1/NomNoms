class Place < ApplicationRecord
    belongs_to :user
    has_many :comments
    
    geocoded_by :address
    after_validation :geocode

    validates :name, :address, :description, presence: true
    validates :name, length: { minimum: 3 }
end


# class Person < ApplicationRecord
#   validates :name, length: { minimum: 2 }
#   validates :bio, length: { maximum: 500 }
#   validates :password, length: { in: 6..20 }
#   validates :registration_number, length: { is: 6 }
# end