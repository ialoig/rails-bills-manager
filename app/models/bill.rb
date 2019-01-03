class Bill < ApplicationRecord

	belongs_to :company
	accepts_nested_attributes_for :company
	validates :description, presence: true
	validates :period, :end_period, :company_id, presence: true
	validates :amount, numericality: {greater_than_or_equal_to: 0.01}
	has_many :attachments
	attr_accessor :document_data
end
