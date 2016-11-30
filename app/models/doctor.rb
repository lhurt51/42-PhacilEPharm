class Doctor < ApplicationRecord
	has_many :patients
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

	validates :user_name,  presence: true, length: { maximum: 50 }
	validates :first_name,  presence: true, length: { maximum: 50 }
	validates :last_name,  presence: true, length: { maximum: 50 }
	validates :doctor_liscense, presence: true, length: { maximum: 10 }
  	validates :email, presence: true, length: { maximum: 255 },
                    format: { with: VALID_EMAIL_REGEX }

	has_secure_password
end
