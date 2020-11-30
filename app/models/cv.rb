class Cv < ApplicationRecord
	has_many :achievements, inverse_of: :cv, dependent: :destroy
	has_many :experiences, inverse_of: :cv, dependent: :destroy
	has_many :educations, inverse_of: :cv, dependent: :destroy
	has_many :skills, inverse_of: :cv, dependent: :destroy
	has_many :projects, inverse_of: :cv, dependent: :destroy
	accepts_nested_attributes_for :achievements, reject_if: :all_blank, allow_destroy: true
	accepts_nested_attributes_for :experiences, reject_if: :all_blank, allow_destroy: true
	accepts_nested_attributes_for :educations, reject_if: :all_blank, allow_destroy: true
	accepts_nested_attributes_for :skills, reject_if: :all_blank, allow_destroy: true
	accepts_nested_attributes_for :projects, reject_if: :all_blank, allow_destroy: true
end
