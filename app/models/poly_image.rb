class PolyImage < ApplicationRecord
  belongs_to :imageable, polymorphic: true
end
 