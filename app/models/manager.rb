class Manager < ApplicationRecord

  has_many :manager_stores
  has_many :stores, :through => :manager_stores
end
