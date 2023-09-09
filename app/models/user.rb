class User < ApplicationRecord
    has_secure_password
    has_many :assets
    has_many :portfolios
    # has_many :portfolios, through: :assets

    validates :email, :first_name, :last_name, presence: true
    validates :email, uniqueness: { case_sensitive: false }
    validates :password, length: { in: 6..20 }

    def total_asset
        
        portfolios.collect{|portfolio| portfolio.valid? ? portfolio.amount : 0}.sum
    end
end
