class User < ApplicationRecord
  validates :name,  presence: true, uniqueness: true, length: { maximum: 50 }, exclusion: { in: [nil, ""] }
  validates :password, presence: true, length: { minimum: 6 }, exclusion: { in: [nil, ""] }
  has_secure_password
end
