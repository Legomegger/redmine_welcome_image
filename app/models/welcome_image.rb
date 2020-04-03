class WelcomeImage < ActiveRecord::Base
  has_one_attached :image
end
