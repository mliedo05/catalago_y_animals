class CardCredit < ApplicationRecord
    has_many :transbanks, as: :transbankable
end
