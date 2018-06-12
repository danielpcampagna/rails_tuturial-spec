class Phone < ApplicationModel
  belongs_to :contact

  validates :phone, uniqueness: { scope: :contact_id }
end
