module Placehoder
  extend ActiveSupport::Concern

  def self.image_generator(height:, width:)
    main_image: "http://placehold.it/#{height}X#{width}"
  end
end