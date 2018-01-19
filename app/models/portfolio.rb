class Portfolio < ApplicationRecord
  validates_presence_of :title, :subtitle, :body, :main_image, :thumb_image

  def self.angular
    where(subtitle: 'Angular')
  end 

  scope :ruby_on_rails, -> { where(subtitle: 'Ruby on Rails') }

  after_initialize :set_defaults

  def set_defaults
    # ||= does a "set if nil"
    self.main_image ||= "http://placehold.it/600X400"
    self.thumb_image ||= "http://placehold.it/350X200"
  end
end