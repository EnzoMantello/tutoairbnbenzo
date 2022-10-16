class Room < ApplicationRecord

    belongs_to :user

    validates :user, presence: true
    validates :price, numeicality: {only_integer: true, greater_than: 5}
    validates :address, presence: true
    validates :home_type, presence: true
    validates :room_type, presence: true
    validates :accomodate, presence: true
    validates :summary, presence: true, length: {maximum: 600}



end
