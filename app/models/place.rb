class Place < ApplicationRecord
  # extend ActiveStorage::Associations::ActiveRecordExtensions
 

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
