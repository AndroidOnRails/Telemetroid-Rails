class ReadingDevice < ActiveRecord::Base
  belongs_to :device
  belongs_to :feed
end