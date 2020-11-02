class Cv < ApplicationRecord
    has_many :experiences, inverse_of: :cv
    has_many :educations, inverse_of: :cv
    accepts_nested_attributes_for :experiences
    accepts_nested_attributes_for :educations
end
