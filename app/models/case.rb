class Case < ActiveRecord::Base

  belongs_to :user

  audited :associated_with => :user

  self.primary_key = 'identifier'

  before_create do |x|
    x.identifier = generate_id
  end

  ID_LENGTH = 12

  def generate_id
    prospect = SecureRandom.random_number(36**ID_LENGTH).to_s(36)
    ("0" * (ID_LENGTH - prospect.length())) + prospect
  end

  def id
    self.identifier
  end

  def display_name
    self.identifier
  end

end

