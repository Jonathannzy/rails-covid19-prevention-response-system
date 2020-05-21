class Citizen < ApplicationRecord
  has_many :appointments
  has_many :clinics, through: :appointments

  validates :email, presence: true, format: /^([a-zA-Z0-9_\-\.]+)@([a-zA-Z0-9_\-\.]+)\.([a-zA-Z]{2,5})/, uniqueness: true
  validates :password, presence: true
  validates :postal_code, presence: true
  validates :nric, format: /^(s|t)[0-9]{7}[a-jz]{1}/
end
