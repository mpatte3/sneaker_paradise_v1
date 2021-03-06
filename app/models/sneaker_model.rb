class SneakerModel < ApplicationRecord
  mount_uploader :sneaker_image, SneakerImageUploader

  # Direct associations

  belongs_to :brand_name,
             :class_name => "Brand",
             :foreign_key => "brands_id",
             :counter_cache => true

  belongs_to :initial_release_year,
             :class_name => "ReleaseYear",
             :foreign_key => "release_year",
             :counter_cache => true

  has_one    :designer,
             :foreign_key => "sneaker_id"

  has_many   :colorways,
             :foreign_key => "sneaker_id",
             :dependent => :nullify

  # Indirect associations

  # Validations

end
