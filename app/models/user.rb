class User < ApplicationRecord
  validates :name, {uniqueness: true}
  validates :password, {presence: true}
end
