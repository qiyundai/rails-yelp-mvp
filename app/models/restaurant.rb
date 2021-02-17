class Restaurant < ApplicationRecord
    has_many :reviews, dependent: :destroy

    validates_presence_of :name, :address, :category
    validates_inclusion_of :category, in: ["chinese", "italian", "japanese", "french", "belgian"]
end
