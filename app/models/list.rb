class List < ApplicationRecord
  async_pluck
  #async_count_by_sql
  belongs_to :art
  has_one_attached :image
  has_rich_text :body

  def image_as_thumbnail
    return unless image.content_type.in?(%w[image/jpeg image/png image/jpg])
    image.variant(resize_to_limit: [300, 300]).processed
  end
end
