class SharedData < ActiveRecord::Base

  serialize :json_data, Hash

  belongs_to :device
  belongs_to :track
  has_and_belongs_to_many :feeds
end
