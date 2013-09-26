require_relative '~/Desktop/wolf_sim/db/config'

class Pack < ActiveRecord::Base
  has_many :wolves
end