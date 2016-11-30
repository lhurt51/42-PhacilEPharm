class Patient < ApplicationRecord
	has_many :pharmacies, dependent: :destroy
	has_many :doctors, dependent: :destroy
	has_many :perscriptions, dependent: :destroy

	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :user_name,  presence: true, length: { maximum: 50 }
	validates :first_name,  presence: true, length: { maximum: 50 }
	validates :last_name,  presence: true, length: { maximum: 50 }
  	validates :email, presence: true, length: { maximum: 255 },
                    format: { with: VALID_EMAIL_REGEX }

	has_secure_password
end
