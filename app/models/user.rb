class User < ApplicationRecord
  has_many :grupo_users
  has_many :grupos, through: :grupo_users
end
