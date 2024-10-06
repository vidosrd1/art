class Tag < ApplicationRecord
  has_many :taggables, dependent: :destroy
  has_many :articles, through: :taggables
  belongs_to :parent, class_name: "Tag", optional: true  #has_many :taggables, dependent: :destroy
  has_many :subordinates, class_name: "Tag",
    foreign_key: "parent_id", :dependent => :destroy

  def to_s
    name
  end
end
