class Playlist < ApplicationRecord
  belongs_to :language
  has_and_belongs_to_many :users
end
