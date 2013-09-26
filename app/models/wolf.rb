require_relative'~/Desktop/wolf_sim/db/config'

class Wolf < ActiveRecord::Base
  belongs_to :pack
end