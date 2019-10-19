class Contact < ApplicationRecord
  belongs_to :kind
  has_one :address, dependent: :destroy
  has_one :phone, dependent: :destroy

    accepts_nested_attributes_for :address, reject_if: :all_blank, allow_destroy: true
    accepts_nested_attributes_for :phone, reject_if: :all_blank, allow_destroy: true
end
