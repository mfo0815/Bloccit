class SponsoredPost < ActiveRecord::Base
  attr_accessor :topic
  belongs_to :topic
end
