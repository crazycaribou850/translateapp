class Playlist < ApplicationRecord
  belongs_to :language, optional: true
  has_and_belongs_to_many :users

  serialize :words
end
