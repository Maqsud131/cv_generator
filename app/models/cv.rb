class Cv < ApplicationRecord
    has_many :experiences, inverse_of: :cv
    accepts_nested_attributes_for :experiences
end
