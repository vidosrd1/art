class Art < ApplicationRecord
  async_pluck
  #async_count_by_sql
  validates :name, presence: true, uniqueness: true
  has_many :lists
end
