require_relative'../../db/config'

class Pack < ActiveRecord::Base
  has_many :wolves
end