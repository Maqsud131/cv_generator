class Experience < ApplicationRecord
    belongs_to :cv
    has_many :text_lines
    accepts_nested_attributes_for :text_lines
end
