class Book < ApplicationRecord
    validates :autor, presence: true, length: { minimum: 2 }
    validates :titulo, presence: true, length: { minimum: 2 }
end
