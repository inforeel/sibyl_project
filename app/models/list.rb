class List < ActiveRecord::Base
	has_many :list_items
	has_many :items
	accepts_nested_attributes_for :list_items
end
