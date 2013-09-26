require_relative'../../db/config'

class Wolf < ActiveRecord::Base
  belongs_to :pack
end