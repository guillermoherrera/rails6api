class Book < ApplicationRecord
    validates :titulo, presence: true, length: { minimum: 3 }

    belongs_to :author
end
