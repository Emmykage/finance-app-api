class User < ApplicationRecord
    has_secure_password
    has_many :assets
    has_many :portfolios
    has_one :wallet
    has_one :earning, through: :wallet
    has_many :messages, class_name: "Message" , foreign_key: "sender_id"
    # has_many :messages, class_name: "Message", foreign_key: "recipient_id"
    # belongs_to :message, optional: true
    # has_many :portfolios, through: :assets 

    enum :role, {client: 0, admin: 1}

    validates :email, :first_name, :last_name, presence: true
    validates :email, uniqueness: { case_sensitive: false }
    validates :password, length: { in: 6..20 }
    validates :email, uniqueness: true, format: { with: /\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,})+\z/i, message: ":Please enter a valid email address."}

    def full_name 
        first_name + " " + last_name
      
    end
    def total_asset     
        if assets.any?   
        portfolios.collect{|portfolio| portfolio.valid? ? portfolio.amount : 0}.sum
        else 
        0.0
        end
    end


    def total_earnings
        if portfolios.any? 
            portfolios.collect{|portfolio| portfolio.valid? ? portfolio.investment_interest : 0}.sum
        else
            0.0
        end
      
    end
end