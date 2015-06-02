class User < ActiveRecord::Base
  has_many :cases
  audited
  has_associated_audits
end
