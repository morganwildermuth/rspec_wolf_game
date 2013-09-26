require_relative'../../db/config'

class Wolf < ActiveRecord::Base
  belongs_to :pack, class_name: "Pack", foreign_key: "pack_id"
end