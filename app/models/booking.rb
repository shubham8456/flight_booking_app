class Booking < ApplicationRecord
  belongs_to :member
  belongs_to :schedule
  has_many :travellers, inverse_of: :booking, dependent: :destroy
  accepts_nested_attributes_for :travellers, reject_if: :all_blank, allow_destroy: true
end
