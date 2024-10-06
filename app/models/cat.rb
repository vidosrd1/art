class Cat < ApplicationRecord
  #attr_accessible :name, :parent
  has_ancestry
  validates :name, presence: true, uniqueness: true
  has_many :posts
  #accepts_nested_attributes_for :parents, reject_if: :all_blank, allow_destroy: true
  has_many :subcats, class_name: 'Cat',
   foreign_key: 'parent_id', :dependent => :destroy
  has_many :parents, inverse_of: :cat#:property
  belongs_to :parent, class_name: "Cat",
    foreign_key: :parent_id, optional: true
  has_many :children, class_name: "Cat",
    foreign_key: "parent_id"
  has_many :children, :class_name => 'Cat',
   :foreign_key => 'parent_id'
  #scope :top_level, where(:parent_id => nil)
  scope :roots, -> { where(parent_id: nil) }

   # Show subcategory
   def show
     @cat = Cat.find(params[:id])
       # Grab all sub-categories
     @cats = @cat.parent_cat
       # We want to reuse the index renderer:
     render :action => :index
   end

   def find_subcats
     @subcats = Cat.where(:parent_id =>
       params[:parent_id]).all
   end

   def descendents
     children.map do |child|
       [child] + child.descendents
     end.flatten
   end

   def self_and_descendents
     [self] + descendents
   end
end
