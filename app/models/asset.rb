class Asset < ApplicationRecord
  has_one_attached :image
  belongs_to :user

  has_many :portfolios, dependent: :destroy
  enum :payment_schedule, {"event based": 0, monthly: 1, quarterly: 2, biannually: 3, yearly: 4}
  enum :asset_type, {other: 0, "Crypto": 1, "Art": 2, "Legal": 3, "Private Credit": 4, "Private Equity" => 5, "Real Estate": 6, "Venture Capital": 7, "Transportation": 8, "Short Term Note": 9 }

  validates :title, :description, :overview_note, presence: true
  def image_url
    Rails.application.routes.url_helpers.url_for(image) if image.attached?
  end
end
