class Cv < ApplicationRecord
    has_many :achievements, inverse_of: :cv
    has_many :experiences, inverse_of: :cv
    has_many :educations, inverse_of: :cv
    has_many :skills, inverse_of: :cv
    has_many :projects, inverse_of: :cv
    accepts_nested_attributes_for :achievements
    accepts_nested_attributes_for :experiences
    accepts_nested_attributes_for :educations
    accepts_nested_attributes_for :skills
    accepts_nested_attributes_for :projects
end
