class Grupo < ApplicationRecord
  belongs_to :user
  has_many :grupo_users
  has_many :users, through: :grupo_users
end
