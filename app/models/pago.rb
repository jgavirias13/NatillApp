class Pago < ApplicationRecord
  belongs_to :grupo
  belongs_to :user
end
