class Store < ApplicationRecord

  has_many :manager_stores
  has_many :managers, :through => :manager_stores
end
