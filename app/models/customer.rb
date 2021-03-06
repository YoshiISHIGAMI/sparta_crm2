class Customer < ActiveRecord::Base

  validates :family_name,
    presence: true, length: { maximum: 20 } #バリデーションの条件 
  validates :given_name,
    presence: true, length: { maximum: 20 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i#宣言
  validates :email,  
    presence: true, format: { with: VALID_EMAIL_REGEX }
  validates :company_id,
    presence: true 
  
  belongs_to :company

  def full_name #変数名
    full_name = family_name + given_name
    full_name
  end
end
