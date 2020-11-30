class Experience < ApplicationRecord
    belongs_to :cv
    has_many :text_lines, inverse_of: :experience, dependent: :destroy
    accepts_nested_attributes_for :text_lines, reject_if: :all_blank, allow_destroy: true
end
