class GrupoUser < ApplicationRecord
  belongs_to :user
  belongs_to :grupo
end
