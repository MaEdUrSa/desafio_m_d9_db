class Serie < ApplicationRecord
    validates :name, presence: true 
    validates :synopsis, presence: true 
    validates :director, presence: true 
end
