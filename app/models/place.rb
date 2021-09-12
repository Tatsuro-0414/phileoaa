class Place < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category

  def self.search(search)
    if search != ""
      Place.where('name LIKE(?)', "%#{search}%")
    else
      Place.all
    end
  end
  # include ActiveHash::Associations
  # has_many :items
end
