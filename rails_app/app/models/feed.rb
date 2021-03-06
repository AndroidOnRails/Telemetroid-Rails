class Feed < ActiveRecord::Base
  has_many :admins
  has_many :writers
  has_many :readers
  
  validates :name, presence: true
  validates :identifier, presence: true, uniqueness: true
  
  before_validation :generate_identifier
  
  def generate_identifier
    if self.identifier
      return
    end
    identifier = SecureRandom.base64(20)
    while Feed.find_by_identifier(identifier) != nil
      identifier = SecureRandom.base64(20)
    end
    self.identifier = identifier
  end
  
end
