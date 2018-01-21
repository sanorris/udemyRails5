class Skill < ApplicationRecord
  include Placeholder
  validates_presence_of :title, :percent_utilized

  def set_defaults
    # ||= does a "set if nil"
    self.badge ||= Placeholder.image_generator(height: '250', width: '250')
  end
end
